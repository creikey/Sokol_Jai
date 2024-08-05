#import,dir "..";
#import "Basic";

#insert JAI_CALLBACKS;

init :: () {
    sg_setup(*(sg_desc.{
        environment = sglue_environment(),
        logger.func = logger_sokol,
    }));
}

frame_counter: int = 0;

frame :: () {
    frame_counter += 1;
    sg_begin_pass(*(sg_pass.{
        action = .{
            colors[0] = .{
                load_action = .SG_LOADACTION_CLEAR,
                clear_value = .{cast(float)(frame_counter % 100) / 100.0, 0.0, 0.0, 1.0},
            }
        },
        swapchain = sglue_swapchain(),
    }));
    sg_end_pass();
    sg_commit();
}

cleanup :: () {
    sg_shutdown();
}

event :: (event: *sapp_event) {
    if event.type == .SAPP_EVENTTYPE_KEY_DOWN && event.key_code == .ESCAPE {
        sapp_quit();
    }
}

main :: () {
    sapp_run(set_callbacks(.{
        window_title = "Basic Window",
    }));
}