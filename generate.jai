MAC_LIBRARIES :: string.["Foundation", "Cocoa", "QuartzCore", "Metal", "MetalKit"];

#run {
    set_build_options_dc(.{do_output=false});
    options := get_build_options();
    args := options.compile_time_command_line;
    if !generate_bindings(args, options.minimum_os_version) {
        compiler_set_workspace_status(.FAILED);
    }
}

generate_bindings :: (args: [] string, minimum_os_version: type_of(Build_Options.minimum_os_version)) -> bool {
    target_android := array_find(args, "-android");
    target_x64     := array_find(args, "-x64");
    target_arm     := array_find(args, "-arm64");
    compile        := array_find(args, "-compile");
    compile_debug  := array_find(args, "-debug");

    os_target  := OS;
    cpu_target := CPU;
    if target_android os_target = .ANDROID;
    if target_x64     cpu_target = .X64;
    if target_arm     cpu_target = .ARM64;

    lib_directory: string;
    if os_target == {
        case .WINDOWS;
            lib_directory = "windows";
        case .LINUX;
            lib_directory = "linux";
        case .MACOS;
            lib_directory = "macos";
        case .ANDROID;
            lib_directory = ifx cpu_target == .X64 then "android/x64" else "android/arm64";
        case .PS5;
            lib_directory = "ps5";
        case;
            assert(false);
    }

    if compile {
        if os_target == .MACOS {
            success,  static_x64_path,   dynamic_x64_path   := compile_sokol_variant(os_target, .X64,   .{10, 13}, lib_directory, compile_debug = compile_debug, suffix = "_x64");
            if !success return false;
            success=, static_arm64_path, dynamic_arm64_path := compile_sokol_variant(os_target, .ARM64, .{11, 0},  lib_directory, compile_debug = compile_debug, suffix = "_arm64");
            if !success return false;
            // Create universal binaries out of the two arch builds:
            run_or_exit(.["lipo", "-create", dynamic_x64_path, dynamic_arm64_path, "-output", tprint("%/libsokol.dylib", lib_directory)], "");
            run_or_exit(.["lipo", "-create", static_x64_path,  static_arm64_path,  "-output", tprint("%/libsokol.a",     lib_directory)], "");
            file_delete(dynamic_x64_path);
            file_delete(dynamic_arm64_path);
            file_delete(static_x64_path);
            file_delete(static_arm64_path);
        } else {
            success := compile_sokol_variant(os_target, .X64,   minimum_os_version, lib_directory, compile_debug = compile_debug);
            if !success return false;
        }
    }

    options: Generate_Bindings_Options;
    options.os = os_target;
    options.cpu = cpu_target;
    output_name: string;
    {
        using options;

        #if OS == .WINDOWS {
            output_name = "windows.jai";
        } else #if OS == .LINUX {
            output_name = "unix.jai";
            generate_library_declarations = false;
            footer = UNIX_FOOTER;
        } else #if OS == .MACOS {
            output_name = "unix.jai";
            generate_library_declarations = false;
            footer_builder: String_Builder;
            for MAC_LIBRARIES {
                print_to_builder(*footer_builder, "%1 :: #library,system,link_always \"%1\";\n", it);
            }
            print_to_builder(*footer_builder, UNIX_FOOTER);
            footer = builder_to_string(*footer_builder);
        } else {
            #assert false; // Unknown OS
        }

        /*
        array_add(*strip_prefixes, "sg_");
        array_add(*strip_prefixes, "SG_");
        array_add(*strip_prefixes, "sapp_");
        array_add(*strip_prefixes, "SAPP_");
        */

        array_add(*libpaths, lib_directory);

        array_add(*libnames, "libsokol");
        array_add(*source_files, "sokol_app.h");
        array_add(*source_files, "sokol_gfx.h");
        array_add(*source_files, "sokol_glue.h");
        auto_detect_enum_prefixes = true;
        log_stripped_declarations = true;
        generate_compile_time_struct_checks = false;
    }

    return generate_bindings(options, output_name);
}


compile_sokol_variant :: (os_target: Operating_System_Tag, cpu_target: CPU_Tag, minimum_os_version: type_of(Build_Options.minimum_os_version), target_directory: string, compile_debug: bool, suffix := "") -> bool, static_lib_path: string, dynamic_lib_path: string {
    success := make_directory_if_it_does_not_exist(target_directory, recursive = true);
    if !success {
        log_error("Failed to make directory \"%\"", target_directory);
        return false, "", "";
    }


    if os_target == .MACOS {
        // base_compile_command_string := "clang -x objective-c sokol_library.c  -DSOKOL_METAL";
        base_compile_command_string := tprint("clang -x objective-c -target % sokol_library.c -DSOKOL_METAL", ifx cpu_target == .X64 then "x86_64-apple-macos" else "arm64-apple-macos");
        if compile_debug {
            base_compile_command_string = tprint("% -g -O0", base_compile_command_string);
        }
        base_compile_command := split(base_compile_command_string, " ");

        dynamic_compile_command: [..] string;
        for base_compile_command array_add(*dynamic_compile_command, it);
        array_add(*dynamic_compile_command, "-dynamiclib");
        array_add(*dynamic_compile_command, "-o");
        dynamic_library_dest := tprint("%/libsokol%.dylib", target_directory, suffix);
        array_add(*dynamic_compile_command, dynamic_library_dest);
        for MAC_LIBRARIES {
            array_add(*dynamic_compile_command, "-framework");
            array_add(*dynamic_compile_command, it);
        }
        run_or_exit(dynamic_compile_command);

        static_compile_command: [..] string;
        for base_compile_command array_add(*static_compile_command, it);
        array_add(*static_compile_command, "-c");
        array_add(*static_compile_command, "-o");
        object_path := tprint("%/libsokol%.o", target_directory, suffix);
        array_add(*static_compile_command, object_path);
        run_or_exit(static_compile_command);
        static_library_dest := tprint("%/libsokol%.a",target_directory, suffix);
        static_bundle_command := tprint("ar rcs % %", static_library_dest, object_path);
        run_or_exit(split(static_bundle_command, " "));
        file_delete(object_path);

        return true, static_library_dest, dynamic_library_dest;
    } else {
        assert(false, "uh oh");
        return false, "", "";
    }
}

copy_library :: (src: string, dest: string) -> bool {
    if file_exists(dest) {
        success := file_delete(dest);
        if !success {
            log_error("Failed to delete old \"%\"", dest);
            return false;
        }
    }

    success := copy_file(src, dest);
    if !success {
        log_error("Failed to copy file \"%\" to \"%\"", src, dest);
        return false;
    }

    return true;
}


run_or_exit :: (command: [] string, working_directory: string = "") {
    // Enable this to see the commands being executed.
    // print("Executing command \"%\" in directory \"%\"\n", join(..command, separator = " "), working_directory);

    result, output_string, error_string := run_command(..command, working_directory = working_directory, capture_and_return_output = true, print_captured_output = true);
    defer {
        free(output_string);
        free(error_string);
    }
    if result.exit_code != 0 {
        log_error("Could not run command \"%\" in directory \"%\". Exit code: %\nError:\n%", get_quoted_command_string(command), working_directory, result.exit_code, error_string);
        exit(1);
    }
}

#import "Toolchains/Android";
#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Process";
#import "String";

UNIX_FOOTER :: #string END
#scope_file

#if OS == .LINUX {
    libsokol :: #library "linux/libsokol";
} else #if OS == .MACOS {
    libsokol :: #library "macos/libsokol";
} else #if OS == .ANDROID {
    #if CPU == .X64 {
        libsokol :: #library "android/x64/libsokol";
    } else #if CPU == .ARM64 {
        libsokol :: #library "android/arm64/libsokol";
    }
} else {
    #assert false;
}

END

