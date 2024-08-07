#scope_file;
RUN_TESTS :: true;
#scope_module;

/* Changelog
MM-DD-YY

08-06-24
This is a pretty bad and scuffed not to spec yaml parser, that can parse
the shader reflection output by the sokol tools shader compiler. Which is
all that is required of this parser at this time.
Someday it will be made more complete by reading https://yaml.org/spec/1.2.2/

*/

#import "Hash_Table";

Yaml_Node_Kind :: enum {
    MAPPING;
    SEQUENCE;
    SCALAR;
}

Yaml_Scalar_Kind :: enum {
    INT;
    FLOAT;
    STRING;
}

Yaml_Node :: struct {
    kind: Yaml_Node_Kind;

    // mapping
    children: Table(string, *Yaml_Node);

    // sequence
    sequence: [..] *Yaml_Node;

    // scalar
    scalar_kind: Yaml_Scalar_Kind;
    scalar_int: s64;
    scalar_float: float64;
    scalar_string: string;
}

parse :: (text: string) -> *Yaml_Node {
    tokens := tokenize(text);
    return parse(*tokens);
}

#scope_file;

advance :: (tokens: *[] Yaml_Token, amount: int) {
    assert(amount <= tokens.count);
    tokens.data += amount;
    tokens.count -= amount;
}

parse :: (tokens: []Yaml_Token) -> *Yaml_Node {
    view := tokens;
    return parse(*view);
}

parse :: (tokens: *[] Yaml_Token) -> *Yaml_Node {
    if tokens.count == 0 return null;

    ret := New(Yaml_Node);

    if tokens.*[0].kind == .STRING && tokens.count > 1 && tokens.*[1].kind == .MAPPING_SEP {
        ret.kind = .MAPPING;
        indentation := tokens.*[0].column;
        while tokens.count > 0 {
            if tokens.*[0].kind == .STRING && tokens.*[0].column == indentation {
                key := tokens.*[0].data;
                advance(tokens, 1);
                if tokens.count > 0 && tokens.*[0].kind == .MAPPING_SEP {
                    advance(tokens, 1);
                    value_node := parse(tokens);
                    table_set(*ret.children, key, value_node);
                } else {
                    break;
                }
            } else {
                break;
            }
        }
    } else if tokens.*[0].kind == .SEQUENCE_SEP {
        ret.kind = .SEQUENCE;
        indentation := tokens.*[0].column;
        while tokens.count > 0 {
            if tokens.*[0].kind == .SEQUENCE_SEP && tokens.*[0].column == indentation {
                advance(tokens, 1);
                element_node := parse(tokens);
                array_add(*ret.sequence, element_node);
            } else {
                break;
            }
        }
    } else if tokens.*[0].kind == .STRING {
        ret.kind = .SCALAR;
        ret.scalar_kind = .STRING;
        ret.scalar_string = tokens.*[0].data;
        advance(tokens, 1);
    } else {
        assert(false);
    }

    return ret;
}

Yaml_Token :: struct {
    kind: enum {
        STRING;
        MAPPING_SEP;
        SEQUENCE_SEP;
    };

    line: int;
    column: int;
    data: string;
}

tokenize :: (text: string) -> [..] Yaml_Token {
    #import "String";

    ret: [..] Yaml_Token;
    ret.allocator = temp;

    next_token_begins_at := 0;
    next_token_begins_at_line := 1;
    next_token_begins_at_column := 1;

    cursor := 0;
    line := 1; // of the cursor
    column := 1;
    while true {
        on_end_of_file := cursor == text.count;
        on_newline := false;
        on_mapping_sep := false;
        on_sequence_sep := false;

        if cursor < text.count {
            cur_character := text[cursor];
            on_newline = cur_character == #char "\n";
            if cursor < text.count - 1 {
                next_character := text[cursor + 1];
                on_mapping_sep = cur_character == #char ":" && (next_character == #char " " || next_character == #char "\n");
                on_sequence_sep = cur_character == #char "-" && (next_character == #char " " || next_character == #char "\n");
            }
        }

        // create the next string token if it's delimited by a separating thing
        // it will consist of where it began, up to but excluding the current thing the tokenizer is on
        // only make the token, if 
        create_new_token := on_newline || on_mapping_sep || on_sequence_sep || on_end_of_file;
        if create_new_token {
            total_token := slice(text, next_token_begins_at, cursor - next_token_begins_at);
            without_left_indentation := trim_left(total_token);
            actual_column := next_token_begins_at_column + total_token.count - without_left_indentation.count;
            string_data := trim_right(without_left_indentation);
            if string_data.count > 0 array_add(*ret, .{kind = .STRING, data = string_data, line = next_token_begins_at_line, column = actual_column});
        }

        // depending on what I'm on, advance the cursor appropriately
        cursor_advance := 0;
        if on_end_of_file {
            break;
        } else if on_newline {
            cursor_advance = 1;
        } else if on_mapping_sep {
            array_add(*ret, .{kind = .MAPPING_SEP, line = line, column = column});
            cursor_advance = 2;
        } else if on_sequence_sep {
            array_add(*ret, .{kind = .SEQUENCE_SEP, line = line, column = column});
            cursor_advance = 2;
        } else {
            cursor_advance = 1;
        }

        // apply the cursor advance, also incrementing the line and column
        // the cursor is allowed to be at the end of the file
        for 1..cursor_advance {
            if cursor + 1 <= text.count {
                if text[cursor] == #char "\n" {
                    line += 1;
                    column = 1;
                } else {
                    column += 1;
                }
                cursor += 1;
            }
        }

        // created a new token, so the next one will begin where we are now
        if create_new_token {
            next_token_begins_at = cursor;
            next_token_begins_at_line = line;
            next_token_begins_at_column = column;
        }
    }

    return ret;
}


#if RUN_TESTS {
    #import "Basic";
    #import "Compiler";

    assert_tokens_equal :: (tokens: []Yaml_Token, expected_tokens: []Yaml_Token) {
        assert(expected_tokens.count == tokens.count);
        for tokens {
            expected := expected_tokens[it_index];
            assert(it.kind == expected.kind);
            assert(it.data == expected.data);
            assert(it.line == expected.line);
            assert(it.column == expected.column);
        }
    }

    #scope_export;
    main :: () {
TEST_1 :: #string YAML
collection:
  - first element
YAML
        expected_tokens_1 := Yaml_Token.[
            .{kind = .STRING, data = "collection", line = 1, column = 1},
            .{kind = .MAPPING_SEP, line = 1, column = 11},
            .{kind = .SEQUENCE_SEP, line = 2, column = 3},
            .{kind = .STRING, data = "first element", line = 2, column = 5},
        ];
        tokens_1 := tokenize(TEST_1);
        assert_tokens_equal(tokens_1, expected_tokens_1);
        parsed_1 := parse(tokens_1);
        assert(parsed_1.kind == .MAPPING);
        collection, found := table_find(*parsed_1.children, "collection");
        assert(found);
        assert(collection.kind == .SEQUENCE);
        assert(collection.sequence[0].scalar_kind == .STRING);
        assert(collection.sequence[0].scalar_string == "first element");

TEST_2 :: #string YAML
collection:
  subcollection: hey
another collection: what
YAML
        tokens_2 := tokenize(TEST_2);
        expected_tokens_2 := Yaml_Token.[
            .{kind = .STRING, data = "collection", line = 1, column = 1},
            .{kind = .MAPPING_SEP, line = 1, column = 11},
            .{kind = .STRING, data = "subcollection", line = 2, column = 3},
            .{kind = .MAPPING_SEP, line = 2, column = 16},
            .{kind = .STRING, data = "hey", line = 2, column = 18},
            .{kind = .STRING, data = "another collection", line = 3, column = 1},
            .{kind = .MAPPING_SEP, line = 3, column = 19},
            .{kind = .STRING, data = "what", line = 3, column = 21},
        ];
        assert_tokens_equal(tokens_2, expected_tokens_2);
        {
            parsed_2 := parse(tokens_2);
            assert(parsed_2.kind == .MAPPING);

            collection, found= := table_find(*parsed_2.children, "collection");
            assert(found);
            assert(collection.kind == .MAPPING);

            subcollection, found= := table_find(*collection.children, "subcollection");
            assert(found);
            assert(subcollection.kind == .SCALAR);
            assert(subcollection.scalar_kind == .STRING);
            assert(subcollection.scalar_string == "hey");

            collection=, found= := table_find(*parsed_2.children, "another collection");
            assert(found);
            assert(collection.kind == .SCALAR);
            assert(collection.scalar_string == "what");
        }



TEST_0 :: #string YAML
apple:
  - orange
  - banana:
    - stem
pie:
  - hamburger
YAML
        expected_tokens_0 := Yaml_Token.[
            // apple:
            .{kind = .STRING, data = "apple", line = 1, column = 1},
            .{kind = .MAPPING_SEP, line = 1, column = 6},
            // - orange
            .{kind = .SEQUENCE_SEP, line = 2, column = 3},
            .{kind = .STRING, data = "orange", line = 2, column = 5},
            // - banana:
            .{kind = .SEQUENCE_SEP, line = 3, column = 3},
            .{kind = .STRING, data = "banana", line = 3, column = 5},
            .{kind = .MAPPING_SEP, line = 3, column = 11},
            // - stem
            .{kind = .SEQUENCE_SEP, line = 4, column = 5},
            .{kind = .STRING, data = "stem", line = 4, column = 7},
            // pie:
            .{kind = .STRING, data = "pie", line = 5, column = 1},
            .{kind = .MAPPING_SEP, line = 5, column = 4},
            // - hamburger
            .{kind = .SEQUENCE_SEP, line = 6, column = 3},
            .{kind = .STRING, data = "hamburger", line = 6, column = 5},
        ];
        tokens_0 := tokenize(TEST_0);
        assert_tokens_equal(tokens_0, expected_tokens_0);
        
        parsed_0 := parse(tokens_0);
        assert(parsed_0.kind == .MAPPING);
        apple, found= := table_find(*parsed_0.children, "apple");
        assert(found);
        assert(apple.sequence[0].scalar_string == "orange");
        assert(table_find_pointer(*apple.sequence[1].children, "banana") != null);
        assert(table_find_pointer(*apple.sequence[1].children, "banana").*.sequence[0].scalar_string == "stem");
        pie, found= := table_find(*parsed_0.children, "pie");
        assert(found);
        assert(pie.sequence[0].scalar_string == "hamburger");

        print("Success\n");
    }
}