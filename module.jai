JAI_CALLBACKS :: #string JAI
sapp_context: Context;

init_sokol :: () #c_call {
    push_context sapp_context {
        init();
    }
}

frame_sokol :: () #c_call {
    push_context sapp_context {
        frame();
    }
}

cleanup_sokol :: () #c_call {
    push_context sapp_context {
        cleanup();
    }
}

event_sokol :: (current_event: *sapp_event) #c_call {
    push_context sapp_context {
        event(current_event);
    }
}

logger_sokol :: (tag: *u8, log_level: u32, log_item_id: u32, message_or_null: *u8, line_nr: u32, filename_or_null: *u8, user_data: *void) -> void #c_call {
    push_context sapp_context {
        log_item: sg_log_item = xx log_item_id;
        print("%:% [%] % %\n", to_string(filename_or_null), line_nr, to_string(tag), log_level, to_string(message_or_null));
    }
}

set_callbacks :: (desc: sapp_desc) -> *sapp_desc {
    #import "Basic";
    ret := New(sapp_desc);
    ret.* = desc;
    ret.init_cb = init_sokol;
    ret.frame_cb = frame_sokol;
    ret.cleanup_cb = cleanup_sokol;
    ret.event_cb = event_sokol;
    ret.logger.func = logger_sokol;
    return ret;
}
JAI


#if OS == .WINDOWS {
    #assert(false);
    // not done
} else {
    #load "unix.jai";
}
