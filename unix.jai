//
// This file was auto-generated using the following command:
//
// jai generate.jai - -compile
//



SOKOL_APP_INCLUDED :: 1;

SOKOL_GFX_INCLUDED :: 1;

/* misc constants */
SAPP_MAX :: enum u32 {
    TOUCHPOINTS  :: 8;
    MOUSEBUTTONS :: 3;
    KEYCODES     :: 512;
    ICONIMAGES   :: 8;

    SAPP_MAX_TOUCHPOINTS  :: TOUCHPOINTS;
    SAPP_MAX_MOUSEBUTTONS :: MOUSEBUTTONS;
    SAPP_MAX_KEYCODES     :: KEYCODES;
    SAPP_MAX_ICONIMAGES   :: ICONIMAGES;
}

/*
sapp_event_type

The type of event that's passed to the event handler callback
in the sapp_event.type field. These are not just "traditional"
input events, but also notify the application about state changes
or other user-invoked actions.
*/
sapp_event_type :: enum u32 {
    SAPP_EVENTTYPE_INVALID           :: 0;
    SAPP_EVENTTYPE_KEY_DOWN          :: 1;
    SAPP_EVENTTYPE_KEY_UP            :: 2;
    SAPP_EVENTTYPE_CHAR              :: 3;
    SAPP_EVENTTYPE_MOUSE_DOWN        :: 4;
    SAPP_EVENTTYPE_MOUSE_UP          :: 5;
    SAPP_EVENTTYPE_MOUSE_SCROLL      :: 6;
    SAPP_EVENTTYPE_MOUSE_MOVE        :: 7;
    SAPP_EVENTTYPE_MOUSE_ENTER       :: 8;
    SAPP_EVENTTYPE_MOUSE_LEAVE       :: 9;
    SAPP_EVENTTYPE_TOUCHES_BEGAN     :: 10;
    SAPP_EVENTTYPE_TOUCHES_MOVED     :: 11;
    SAPP_EVENTTYPE_TOUCHES_ENDED     :: 12;
    SAPP_EVENTTYPE_TOUCHES_CANCELLED :: 13;
    SAPP_EVENTTYPE_RESIZED           :: 14;
    SAPP_EVENTTYPE_ICONIFIED         :: 15;
    SAPP_EVENTTYPE_RESTORED          :: 16;
    SAPP_EVENTTYPE_FOCUSED           :: 17;
    SAPP_EVENTTYPE_UNFOCUSED         :: 18;
    SAPP_EVENTTYPE_SUSPENDED         :: 19;
    SAPP_EVENTTYPE_RESUMED           :: 20;
    SAPP_EVENTTYPE_QUIT_REQUESTED    :: 21;
    SAPP_EVENTTYPE_CLIPBOARD_PASTED  :: 22;
    SAPP_EVENTTYPE_FILES_DROPPED     :: 23;
    SAPP_EVENTTYPE_NUM               :: 24;
    SAPP_EVENTTYPE_FORCE_U32         :: 2147483647;

    _SAPP_EVENTTYPE_NUM       :: SAPP_EVENTTYPE_NUM;
    _SAPP_EVENTTYPE_FORCE_U32 :: SAPP_EVENTTYPE_FORCE_U32;
}

/*
sapp_keycode

The 'virtual keycode' of a KEY_DOWN or KEY_UP event in the
struct field sapp_event.key_code.

Note that the keycode values are identical with GLFW.
*/
sapp_keycode :: enum u32 {
    INVALID       :: 0;
    SPACE         :: 32;
    APOSTROPHE    :: 39;
    COMMA         :: 44;
    MINUS         :: 45;
    PERIOD        :: 46;
    SLASH         :: 47;
    _0            :: 48;
    _1            :: 49;
    _2            :: 50;
    _3            :: 51;
    _4            :: 52;
    _5            :: 53;
    _6            :: 54;
    _7            :: 55;
    _8            :: 56;
    _9            :: 57;
    SEMICOLON     :: 59;
    EQUAL         :: 61;
    A             :: 65;
    B             :: 66;
    C             :: 67;
    D             :: 68;
    E             :: 69;
    F             :: 70;
    G             :: 71;
    H             :: 72;
    I             :: 73;
    J             :: 74;
    K             :: 75;
    L             :: 76;
    M             :: 77;
    N             :: 78;
    O             :: 79;
    P             :: 80;
    Q             :: 81;
    R             :: 82;
    S             :: 83;
    T             :: 84;
    U             :: 85;
    V             :: 86;
    W             :: 87;
    X             :: 88;
    Y             :: 89;
    Z             :: 90;
    LEFT_BRACKET  :: 91;
    BACKSLASH     :: 92;
    RIGHT_BRACKET :: 93;
    GRAVE_ACCENT  :: 96;
    WORLD_1       :: 161;
    WORLD_2       :: 162;
    ESCAPE        :: 256;
    ENTER         :: 257;
    TAB           :: 258;
    BACKSPACE     :: 259;
    INSERT        :: 260;
    DELETE        :: 261;
    RIGHT         :: 262;
    LEFT          :: 263;
    DOWN          :: 264;
    UP            :: 265;
    PAGE_UP       :: 266;
    PAGE_DOWN     :: 267;
    HOME          :: 268;
    END           :: 269;
    CAPS_LOCK     :: 280;
    SCROLL_LOCK   :: 281;
    NUM_LOCK      :: 282;
    PRINT_SCREEN  :: 283;
    PAUSE         :: 284;
    F1            :: 290;
    F2            :: 291;
    F3            :: 292;
    F4            :: 293;
    F5            :: 294;
    F6            :: 295;
    F7            :: 296;
    F8            :: 297;
    F9            :: 298;
    F10           :: 299;
    F11           :: 300;
    F12           :: 301;
    F13           :: 302;
    F14           :: 303;
    F15           :: 304;
    F16           :: 305;
    F17           :: 306;
    F18           :: 307;
    F19           :: 308;
    F20           :: 309;
    F21           :: 310;
    F22           :: 311;
    F23           :: 312;
    F24           :: 313;
    F25           :: 314;
    KP_0          :: 320;
    KP_1          :: 321;
    KP_2          :: 322;
    KP_3          :: 323;
    KP_4          :: 324;
    KP_5          :: 325;
    KP_6          :: 326;
    KP_7          :: 327;
    KP_8          :: 328;
    KP_9          :: 329;
    KP_DECIMAL    :: 330;
    KP_DIVIDE     :: 331;
    KP_MULTIPLY   :: 332;
    KP_SUBTRACT   :: 333;
    KP_ADD        :: 334;
    KP_ENTER      :: 335;
    KP_EQUAL      :: 336;
    LEFT_SHIFT    :: 340;
    LEFT_CONTROL  :: 341;
    LEFT_ALT      :: 342;
    LEFT_SUPER    :: 343;
    RIGHT_SHIFT   :: 344;
    RIGHT_CONTROL :: 345;
    RIGHT_ALT     :: 346;
    RIGHT_SUPER   :: 347;
    MENU          :: 348;

    SAPP_KEYCODE_INVALID       :: INVALID;
    SAPP_KEYCODE_SPACE         :: SPACE;
    SAPP_KEYCODE_APOSTROPHE    :: APOSTROPHE;
    SAPP_KEYCODE_COMMA         :: COMMA;
    SAPP_KEYCODE_MINUS         :: MINUS;
    SAPP_KEYCODE_PERIOD        :: PERIOD;
    SAPP_KEYCODE_SLASH         :: SLASH;
    SAPP_KEYCODE_0             :: _0;
    SAPP_KEYCODE_1             :: _1;
    SAPP_KEYCODE_2             :: _2;
    SAPP_KEYCODE_3             :: _3;
    SAPP_KEYCODE_4             :: _4;
    SAPP_KEYCODE_5             :: _5;
    SAPP_KEYCODE_6             :: _6;
    SAPP_KEYCODE_7             :: _7;
    SAPP_KEYCODE_8             :: _8;
    SAPP_KEYCODE_9             :: _9;
    SAPP_KEYCODE_SEMICOLON     :: SEMICOLON;
    SAPP_KEYCODE_EQUAL         :: EQUAL;
    SAPP_KEYCODE_A             :: A;
    SAPP_KEYCODE_B             :: B;
    SAPP_KEYCODE_C             :: C;
    SAPP_KEYCODE_D             :: D;
    SAPP_KEYCODE_E             :: E;
    SAPP_KEYCODE_F             :: F;
    SAPP_KEYCODE_G             :: G;
    SAPP_KEYCODE_H             :: H;
    SAPP_KEYCODE_I             :: I;
    SAPP_KEYCODE_J             :: J;
    SAPP_KEYCODE_K             :: K;
    SAPP_KEYCODE_L             :: L;
    SAPP_KEYCODE_M             :: M;
    SAPP_KEYCODE_N             :: N;
    SAPP_KEYCODE_O             :: O;
    SAPP_KEYCODE_P             :: P;
    SAPP_KEYCODE_Q             :: Q;
    SAPP_KEYCODE_R             :: R;
    SAPP_KEYCODE_S             :: S;
    SAPP_KEYCODE_T             :: T;
    SAPP_KEYCODE_U             :: U;
    SAPP_KEYCODE_V             :: V;
    SAPP_KEYCODE_W             :: W;
    SAPP_KEYCODE_X             :: X;
    SAPP_KEYCODE_Y             :: Y;
    SAPP_KEYCODE_Z             :: Z;
    SAPP_KEYCODE_LEFT_BRACKET  :: LEFT_BRACKET;
    SAPP_KEYCODE_BACKSLASH     :: BACKSLASH;
    SAPP_KEYCODE_RIGHT_BRACKET :: RIGHT_BRACKET;
    SAPP_KEYCODE_GRAVE_ACCENT  :: GRAVE_ACCENT;
    SAPP_KEYCODE_WORLD_1       :: WORLD_1;
    SAPP_KEYCODE_WORLD_2       :: WORLD_2;
    SAPP_KEYCODE_ESCAPE        :: ESCAPE;
    SAPP_KEYCODE_ENTER         :: ENTER;
    SAPP_KEYCODE_TAB           :: TAB;
    SAPP_KEYCODE_BACKSPACE     :: BACKSPACE;
    SAPP_KEYCODE_INSERT        :: INSERT;
    SAPP_KEYCODE_DELETE        :: DELETE;
    SAPP_KEYCODE_RIGHT         :: RIGHT;
    SAPP_KEYCODE_LEFT          :: LEFT;
    SAPP_KEYCODE_DOWN          :: DOWN;
    SAPP_KEYCODE_UP            :: UP;
    SAPP_KEYCODE_PAGE_UP       :: PAGE_UP;
    SAPP_KEYCODE_PAGE_DOWN     :: PAGE_DOWN;
    SAPP_KEYCODE_HOME          :: HOME;
    SAPP_KEYCODE_END           :: END;
    SAPP_KEYCODE_CAPS_LOCK     :: CAPS_LOCK;
    SAPP_KEYCODE_SCROLL_LOCK   :: SCROLL_LOCK;
    SAPP_KEYCODE_NUM_LOCK      :: NUM_LOCK;
    SAPP_KEYCODE_PRINT_SCREEN  :: PRINT_SCREEN;
    SAPP_KEYCODE_PAUSE         :: PAUSE;
    SAPP_KEYCODE_F1            :: F1;
    SAPP_KEYCODE_F2            :: F2;
    SAPP_KEYCODE_F3            :: F3;
    SAPP_KEYCODE_F4            :: F4;
    SAPP_KEYCODE_F5            :: F5;
    SAPP_KEYCODE_F6            :: F6;
    SAPP_KEYCODE_F7            :: F7;
    SAPP_KEYCODE_F8            :: F8;
    SAPP_KEYCODE_F9            :: F9;
    SAPP_KEYCODE_F10           :: F10;
    SAPP_KEYCODE_F11           :: F11;
    SAPP_KEYCODE_F12           :: F12;
    SAPP_KEYCODE_F13           :: F13;
    SAPP_KEYCODE_F14           :: F14;
    SAPP_KEYCODE_F15           :: F15;
    SAPP_KEYCODE_F16           :: F16;
    SAPP_KEYCODE_F17           :: F17;
    SAPP_KEYCODE_F18           :: F18;
    SAPP_KEYCODE_F19           :: F19;
    SAPP_KEYCODE_F20           :: F20;
    SAPP_KEYCODE_F21           :: F21;
    SAPP_KEYCODE_F22           :: F22;
    SAPP_KEYCODE_F23           :: F23;
    SAPP_KEYCODE_F24           :: F24;
    SAPP_KEYCODE_F25           :: F25;
    SAPP_KEYCODE_KP_0          :: KP_0;
    SAPP_KEYCODE_KP_1          :: KP_1;
    SAPP_KEYCODE_KP_2          :: KP_2;
    SAPP_KEYCODE_KP_3          :: KP_3;
    SAPP_KEYCODE_KP_4          :: KP_4;
    SAPP_KEYCODE_KP_5          :: KP_5;
    SAPP_KEYCODE_KP_6          :: KP_6;
    SAPP_KEYCODE_KP_7          :: KP_7;
    SAPP_KEYCODE_KP_8          :: KP_8;
    SAPP_KEYCODE_KP_9          :: KP_9;
    SAPP_KEYCODE_KP_DECIMAL    :: KP_DECIMAL;
    SAPP_KEYCODE_KP_DIVIDE     :: KP_DIVIDE;
    SAPP_KEYCODE_KP_MULTIPLY   :: KP_MULTIPLY;
    SAPP_KEYCODE_KP_SUBTRACT   :: KP_SUBTRACT;
    SAPP_KEYCODE_KP_ADD        :: KP_ADD;
    SAPP_KEYCODE_KP_ENTER      :: KP_ENTER;
    SAPP_KEYCODE_KP_EQUAL      :: KP_EQUAL;
    SAPP_KEYCODE_LEFT_SHIFT    :: LEFT_SHIFT;
    SAPP_KEYCODE_LEFT_CONTROL  :: LEFT_CONTROL;
    SAPP_KEYCODE_LEFT_ALT      :: LEFT_ALT;
    SAPP_KEYCODE_LEFT_SUPER    :: LEFT_SUPER;
    SAPP_KEYCODE_RIGHT_SHIFT   :: RIGHT_SHIFT;
    SAPP_KEYCODE_RIGHT_CONTROL :: RIGHT_CONTROL;
    SAPP_KEYCODE_RIGHT_ALT     :: RIGHT_ALT;
    SAPP_KEYCODE_RIGHT_SUPER   :: RIGHT_SUPER;
    SAPP_KEYCODE_MENU          :: MENU;
}

/*
Android specific 'tool type' enum for touch events. This lets the
application check what type of input device was used for
touch events.

NOTE: the values must remain in sync with the corresponding
Android SDK type, so don't change those.

See https://developer.android.com/reference/android/view/MotionEvent#TOOL_TYPE_UNKNOWN
*/
sapp_android_tooltype :: enum u32 {
    UNKNOWN :: 0;
    FINGER  :: 1;
    STYLUS  :: 2;
    MOUSE   :: 3;

    SAPP_ANDROIDTOOLTYPE_UNKNOWN :: UNKNOWN;
    SAPP_ANDROIDTOOLTYPE_FINGER  :: FINGER;
    SAPP_ANDROIDTOOLTYPE_STYLUS  :: STYLUS;
    SAPP_ANDROIDTOOLTYPE_MOUSE   :: MOUSE;
}

/*
sapp_touchpoint

Describes a single touchpoint in a multitouch event (TOUCHES_BEGAN,
TOUCHES_MOVED, TOUCHES_ENDED).

Touch points are stored in the nested array sapp_event.touches[],
and the number of touches is stored in sapp_event.num_touches.
*/
sapp_touchpoint :: struct {
    identifier:       u64;
    pos_x:            float;
    pos_y:            float;
    android_tooltype: sapp_android_tooltype; // only valid on Android
    changed:          bool;
}

/*
sapp_mousebutton

The currently pressed mouse button in the events MOUSE_DOWN
and MOUSE_UP, stored in the struct field sapp_event.mouse_button.
*/
sapp_mousebutton :: enum u32 {
    LEFT    :: 0;
    RIGHT   :: 1;
    MIDDLE  :: 2;
    INVALID :: 256;

    SAPP_MOUSEBUTTON_LEFT    :: LEFT;
    SAPP_MOUSEBUTTON_RIGHT   :: RIGHT;
    SAPP_MOUSEBUTTON_MIDDLE  :: MIDDLE;
    SAPP_MOUSEBUTTON_INVALID :: INVALID;
}

/*
These are currently pressed modifier keys (and mouse buttons) which are
passed in the event struct field sapp_event.modifiers.
*/
SAPP_MODIFIER :: enum u32 {
    SHIFT :: 1;
    CTRL  :: 2;
    ALT   :: 4;
    SUPER :: 8;
    LMB   :: 256;
    RMB   :: 512;
    MMB   :: 1024;

    SAPP_MODIFIER_SHIFT :: SHIFT;
    SAPP_MODIFIER_CTRL  :: CTRL;
    SAPP_MODIFIER_ALT   :: ALT;
    SAPP_MODIFIER_SUPER :: SUPER;
    SAPP_MODIFIER_LMB   :: LMB;
    SAPP_MODIFIER_RMB   :: RMB;
    SAPP_MODIFIER_MMB   :: MMB;
}

/*
sapp_event

This is an all-in-one event struct passed to the event handler
user callback function. Note that it depends on the event
type what struct fields actually contain useful values, so you
should first check the event type before reading other struct
fields.
*/
sapp_event :: struct {
    frame_count:        u64; // current frame counter, always valid, useful for checking if two events were issued in the same frame
    type:               sapp_event_type; // the event type, always valid
    key_code:           sapp_keycode; // the virtual key code, only valid in KEY_UP, KEY_DOWN
    char_code:          u32; // the UTF-32 character code, only valid in CHAR events
    key_repeat:         bool; // true if this is a key-repeat event, valid in KEY_UP, KEY_DOWN and CHAR
    modifiers:          u32; // current modifier keys, valid in all key-, char- and mouse-events
    mouse_button:       sapp_mousebutton; // mouse button that was pressed or released, valid in MOUSE_DOWN, MOUSE_UP
    mouse_x:            float; // current horizontal mouse position in pixels, always valid except during mouse lock
    mouse_y:            float; // current vertical mouse position in pixels, always valid except during mouse lock
    mouse_dx:           float; // relative horizontal mouse movement since last frame, always valid
    mouse_dy:           float; // relative vertical mouse movement since last frame, always valid
    scroll_x:           float; // horizontal mouse wheel scroll distance, valid in MOUSE_SCROLL events
    scroll_y:           float; // vertical mouse wheel scroll distance, valid in MOUSE_SCROLL events
    num_touches:        s32; // number of valid items in the touches[] array
    touches:            [8] sapp_touchpoint; // current touch points, valid in TOUCHES_BEGIN, TOUCHES_MOVED, TOUCHES_ENDED
    window_width:       s32; // current window- and framebuffer sizes in pixels, always valid
    window_height:      s32;
    framebuffer_width:  s32; // = window_width * dpi_scale
    framebuffer_height: s32; // = window_height * dpi_scale
}

/*
sg_range

A general pointer/size-pair struct and constructor macros for passing binary blobs
into sokol_app.h.
*/
sapp_range :: struct {
    ptr:  *void;
    size: u64;
}

/*
sapp_image_desc

This is used to describe image data to sokol_app.h (at first, window
icons, later maybe cursor images).

Note that the actual image pixel format depends on the use case:

- window icon pixels are RGBA8
*/
sapp_image_desc :: struct {
    width:  s32;
    height: s32;
    pixels: sapp_range;
}

/*
sapp_icon_desc

An icon description structure for use in sapp_desc.icon and
sapp_set_icon().

When setting a custom image, the application can provide a number of
candidates differing in size, and sokol_app.h will pick the image(s)
closest to the size expected by the platform's window system.

To set sokol-app's default icon, set .sokol_default to true.

Otherwise provide candidate images of different sizes in the
images[] array.

If both the sokol_default flag is set to true, any image candidates
will be ignored and the sokol_app.h default icon will be set.
*/
sapp_icon_desc :: struct {
    sokol_default: bool;
    images:        [8] sapp_image_desc;
}

/*
sapp_allocator

Used in sapp_desc to provide custom memory-alloc and -free functions
to sokol_app.h. If memory management should be overridden, both the
alloc_fn and free_fn function must be provided (e.g. it's not valid to
override one function but not the other).
*/
sapp_allocator :: struct {
    alloc_fn:  #type (size: u64, user_data: *void) -> *void #c_call;
    free_fn:   #type (ptr: *void, user_data: *void) -> void #c_call;
    user_data: *void;
}

sapp_log_item :: enum u32 {
    OK                                                        :: 0;
    MALLOC_FAILED                                             :: 1;
    MACOS_INVALID_NSOPENGL_PROFILE                            :: 2;
    WIN32_LOAD_OPENGL32_DLL_FAILED                            :: 3;
    WIN32_CREATE_HELPER_WINDOW_FAILED                         :: 4;
    WIN32_HELPER_WINDOW_GETDC_FAILED                          :: 5;
    WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED                :: 6;
    WIN32_CREATE_DUMMY_CONTEXT_FAILED                         :: 7;
    WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED                   :: 8;
    WIN32_GET_PIXELFORMAT_ATTRIB_FAILED                       :: 9;
    WIN32_WGL_FIND_PIXELFORMAT_FAILED                         :: 10;
    WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED                     :: 11;
    WIN32_WGL_SET_PIXELFORMAT_FAILED                          :: 12;
    WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED                     :: 13;
    WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED             :: 14;
    WIN32_WGL_OPENGL_VERSION_NOT_SUPPORTED                    :: 15;
    WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED                    :: 16;
    WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT                     :: 17;
    WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER             :: 18;
    WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED :: 19;
    WIN32_D3D11_GET_IDXGIFACTORY_FAILED                       :: 20;
    WIN32_D3D11_GET_IDXGIADAPTER_FAILED                       :: 21;
    WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED           :: 22;
    WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK        :: 23;
    WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK      :: 24;
    WIN32_GET_RAW_INPUT_DATA_FAILED                           :: 25;
    LINUX_GLX_LOAD_LIBGL_FAILED                               :: 26;
    LINUX_GLX_LOAD_ENTRY_POINTS_FAILED                        :: 27;
    LINUX_GLX_EXTENSION_NOT_FOUND                             :: 28;
    LINUX_GLX_QUERY_VERSION_FAILED                            :: 29;
    LINUX_GLX_VERSION_TOO_LOW                                 :: 30;
    LINUX_GLX_NO_GLXFBCONFIGS                                 :: 31;
    LINUX_GLX_NO_SUITABLE_GLXFBCONFIG                         :: 32;
    LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED                 :: 33;
    LINUX_GLX_REQUIRED_EXTENSIONS_MISSING                     :: 34;
    LINUX_GLX_CREATE_CONTEXT_FAILED                           :: 35;
    LINUX_GLX_CREATE_WINDOW_FAILED                            :: 36;
    LINUX_X11_CREATE_WINDOW_FAILED                            :: 37;
    LINUX_EGL_BIND_OPENGL_API_FAILED                          :: 38;
    LINUX_EGL_BIND_OPENGL_ES_API_FAILED                       :: 39;
    LINUX_EGL_GET_DISPLAY_FAILED                              :: 40;
    LINUX_EGL_INITIALIZE_FAILED                               :: 41;
    LINUX_EGL_NO_CONFIGS                                      :: 42;
    LINUX_EGL_NO_NATIVE_VISUAL                                :: 43;
    LINUX_EGL_GET_VISUAL_INFO_FAILED                          :: 44;
    LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED                    :: 45;
    LINUX_EGL_CREATE_CONTEXT_FAILED                           :: 46;
    LINUX_EGL_MAKE_CURRENT_FAILED                             :: 47;
    LINUX_X11_OPEN_DISPLAY_FAILED                             :: 48;
    LINUX_X11_QUERY_SYSTEM_DPI_FAILED                         :: 49;
    LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME                   :: 50;
    ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB                  :: 51;
    ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB                   :: 52;
    ANDROID_READ_MSG_FAILED                                   :: 53;
    ANDROID_WRITE_MSG_FAILED                                  :: 54;
    ANDROID_MSG_CREATE                                        :: 55;
    ANDROID_MSG_RESUME                                        :: 56;
    ANDROID_MSG_PAUSE                                         :: 57;
    ANDROID_MSG_FOCUS                                         :: 58;
    ANDROID_MSG_NO_FOCUS                                      :: 59;
    ANDROID_MSG_SET_NATIVE_WINDOW                             :: 60;
    ANDROID_MSG_SET_INPUT_QUEUE                               :: 61;
    ANDROID_MSG_DESTROY                                       :: 62;
    ANDROID_UNKNOWN_MSG                                       :: 63;
    ANDROID_LOOP_THREAD_STARTED                               :: 64;
    ANDROID_LOOP_THREAD_DONE                                  :: 65;
    ANDROID_NATIVE_ACTIVITY_ONSTART                           :: 66;
    ANDROID_NATIVE_ACTIVITY_ONRESUME                          :: 67;
    ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE               :: 68;
    ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED              :: 69;
    ANDROID_NATIVE_ACTIVITY_ONPAUSE                           :: 70;
    ANDROID_NATIVE_ACTIVITY_ONSTOP                            :: 71;
    ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED             :: 72;
    ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED           :: 73;
    ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED               :: 74;
    ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED             :: 75;
    ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED            :: 76;
    ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY                       :: 77;
    ANDROID_NATIVE_ACTIVITY_ONDESTROY                         :: 78;
    ANDROID_NATIVE_ACTIVITY_DONE                              :: 79;
    ANDROID_NATIVE_ACTIVITY_ONCREATE                          :: 80;
    ANDROID_CREATE_THREAD_PIPE_FAILED                         :: 81;
    ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS                    :: 82;
    WGPU_SWAPCHAIN_CREATE_SURFACE_FAILED                      :: 83;
    WGPU_SWAPCHAIN_CREATE_SWAPCHAIN_FAILED                    :: 84;
    WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_TEXTURE_FAILED        :: 85;
    WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_VIEW_FAILED           :: 86;
    WGPU_SWAPCHAIN_CREATE_MSAA_TEXTURE_FAILED                 :: 87;
    WGPU_SWAPCHAIN_CREATE_MSAA_VIEW_FAILED                    :: 88;
    WGPU_REQUEST_DEVICE_STATUS_ERROR                          :: 89;
    WGPU_REQUEST_DEVICE_STATUS_UNKNOWN                        :: 90;
    WGPU_REQUEST_ADAPTER_STATUS_UNAVAILABLE                   :: 91;
    WGPU_REQUEST_ADAPTER_STATUS_ERROR                         :: 92;
    WGPU_REQUEST_ADAPTER_STATUS_UNKNOWN                       :: 93;
    WGPU_CREATE_INSTANCE_FAILED                               :: 94;
    IMAGE_DATA_SIZE_MISMATCH                                  :: 95;
    DROPPED_FILE_PATH_TOO_LONG                                :: 96;
    CLIPBOARD_STRING_TOO_BIG                                  :: 97;
    SAPP_LOGITEM_OK                                                        :: OK;
    SAPP_LOGITEM_MALLOC_FAILED                                             :: MALLOC_FAILED;
    SAPP_LOGITEM_MACOS_INVALID_NSOPENGL_PROFILE                            :: MACOS_INVALID_NSOPENGL_PROFILE;
    SAPP_LOGITEM_WIN32_LOAD_OPENGL32_DLL_FAILED                            :: WIN32_LOAD_OPENGL32_DLL_FAILED;
    SAPP_LOGITEM_WIN32_CREATE_HELPER_WINDOW_FAILED                         :: WIN32_CREATE_HELPER_WINDOW_FAILED;
    SAPP_LOGITEM_WIN32_HELPER_WINDOW_GETDC_FAILED                          :: WIN32_HELPER_WINDOW_GETDC_FAILED;
    SAPP_LOGITEM_WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED                :: WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_CREATE_DUMMY_CONTEXT_FAILED                         :: WIN32_CREATE_DUMMY_CONTEXT_FAILED;
    SAPP_LOGITEM_WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED                   :: WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED;
    SAPP_LOGITEM_WIN32_GET_PIXELFORMAT_ATTRIB_FAILED                       :: WIN32_GET_PIXELFORMAT_ATTRIB_FAILED;
    SAPP_LOGITEM_WIN32_WGL_FIND_PIXELFORMAT_FAILED                         :: WIN32_WGL_FIND_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED                     :: WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_WGL_SET_PIXELFORMAT_FAILED                          :: WIN32_WGL_SET_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED                     :: WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED;
    SAPP_LOGITEM_WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED             :: WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED;
    SAPP_LOGITEM_WIN32_WGL_OPENGL_VERSION_NOT_SUPPORTED                    :: WIN32_WGL_OPENGL_VERSION_NOT_SUPPORTED;
    SAPP_LOGITEM_WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED                    :: WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED;
    SAPP_LOGITEM_WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT                     :: WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT;
    SAPP_LOGITEM_WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER             :: WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER;
    SAPP_LOGITEM_WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED :: WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED;
    SAPP_LOGITEM_WIN32_D3D11_GET_IDXGIFACTORY_FAILED                       :: WIN32_D3D11_GET_IDXGIFACTORY_FAILED;
    SAPP_LOGITEM_WIN32_D3D11_GET_IDXGIADAPTER_FAILED                       :: WIN32_D3D11_GET_IDXGIADAPTER_FAILED;
    SAPP_LOGITEM_WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED           :: WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED;
    SAPP_LOGITEM_WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK        :: WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK;
    SAPP_LOGITEM_WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK      :: WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK;
    SAPP_LOGITEM_WIN32_GET_RAW_INPUT_DATA_FAILED                           :: WIN32_GET_RAW_INPUT_DATA_FAILED;
    SAPP_LOGITEM_LINUX_GLX_LOAD_LIBGL_FAILED                               :: LINUX_GLX_LOAD_LIBGL_FAILED;
    SAPP_LOGITEM_LINUX_GLX_LOAD_ENTRY_POINTS_FAILED                        :: LINUX_GLX_LOAD_ENTRY_POINTS_FAILED;
    SAPP_LOGITEM_LINUX_GLX_EXTENSION_NOT_FOUND                             :: LINUX_GLX_EXTENSION_NOT_FOUND;
    SAPP_LOGITEM_LINUX_GLX_QUERY_VERSION_FAILED                            :: LINUX_GLX_QUERY_VERSION_FAILED;
    SAPP_LOGITEM_LINUX_GLX_VERSION_TOO_LOW                                 :: LINUX_GLX_VERSION_TOO_LOW;
    SAPP_LOGITEM_LINUX_GLX_NO_GLXFBCONFIGS                                 :: LINUX_GLX_NO_GLXFBCONFIGS;
    SAPP_LOGITEM_LINUX_GLX_NO_SUITABLE_GLXFBCONFIG                         :: LINUX_GLX_NO_SUITABLE_GLXFBCONFIG;
    SAPP_LOGITEM_LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED                 :: LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED;
    SAPP_LOGITEM_LINUX_GLX_REQUIRED_EXTENSIONS_MISSING                     :: LINUX_GLX_REQUIRED_EXTENSIONS_MISSING;
    SAPP_LOGITEM_LINUX_GLX_CREATE_CONTEXT_FAILED                           :: LINUX_GLX_CREATE_CONTEXT_FAILED;
    SAPP_LOGITEM_LINUX_GLX_CREATE_WINDOW_FAILED                            :: LINUX_GLX_CREATE_WINDOW_FAILED;
    SAPP_LOGITEM_LINUX_X11_CREATE_WINDOW_FAILED                            :: LINUX_X11_CREATE_WINDOW_FAILED;
    SAPP_LOGITEM_LINUX_EGL_BIND_OPENGL_API_FAILED                          :: LINUX_EGL_BIND_OPENGL_API_FAILED;
    SAPP_LOGITEM_LINUX_EGL_BIND_OPENGL_ES_API_FAILED                       :: LINUX_EGL_BIND_OPENGL_ES_API_FAILED;
    SAPP_LOGITEM_LINUX_EGL_GET_DISPLAY_FAILED                              :: LINUX_EGL_GET_DISPLAY_FAILED;
    SAPP_LOGITEM_LINUX_EGL_INITIALIZE_FAILED                               :: LINUX_EGL_INITIALIZE_FAILED;
    SAPP_LOGITEM_LINUX_EGL_NO_CONFIGS                                      :: LINUX_EGL_NO_CONFIGS;
    SAPP_LOGITEM_LINUX_EGL_NO_NATIVE_VISUAL                                :: LINUX_EGL_NO_NATIVE_VISUAL;
    SAPP_LOGITEM_LINUX_EGL_GET_VISUAL_INFO_FAILED                          :: LINUX_EGL_GET_VISUAL_INFO_FAILED;
    SAPP_LOGITEM_LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED                    :: LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED;
    SAPP_LOGITEM_LINUX_EGL_CREATE_CONTEXT_FAILED                           :: LINUX_EGL_CREATE_CONTEXT_FAILED;
    SAPP_LOGITEM_LINUX_EGL_MAKE_CURRENT_FAILED                             :: LINUX_EGL_MAKE_CURRENT_FAILED;
    SAPP_LOGITEM_LINUX_X11_OPEN_DISPLAY_FAILED                             :: LINUX_X11_OPEN_DISPLAY_FAILED;
    SAPP_LOGITEM_LINUX_X11_QUERY_SYSTEM_DPI_FAILED                         :: LINUX_X11_QUERY_SYSTEM_DPI_FAILED;
    SAPP_LOGITEM_LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME                   :: LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME;
    SAPP_LOGITEM_ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB                  :: ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB;
    SAPP_LOGITEM_ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB                   :: ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB;
    SAPP_LOGITEM_ANDROID_READ_MSG_FAILED                                   :: ANDROID_READ_MSG_FAILED;
    SAPP_LOGITEM_ANDROID_WRITE_MSG_FAILED                                  :: ANDROID_WRITE_MSG_FAILED;
    SAPP_LOGITEM_ANDROID_MSG_CREATE                                        :: ANDROID_MSG_CREATE;
    SAPP_LOGITEM_ANDROID_MSG_RESUME                                        :: ANDROID_MSG_RESUME;
    SAPP_LOGITEM_ANDROID_MSG_PAUSE                                         :: ANDROID_MSG_PAUSE;
    SAPP_LOGITEM_ANDROID_MSG_FOCUS                                         :: ANDROID_MSG_FOCUS;
    SAPP_LOGITEM_ANDROID_MSG_NO_FOCUS                                      :: ANDROID_MSG_NO_FOCUS;
    SAPP_LOGITEM_ANDROID_MSG_SET_NATIVE_WINDOW                             :: ANDROID_MSG_SET_NATIVE_WINDOW;
    SAPP_LOGITEM_ANDROID_MSG_SET_INPUT_QUEUE                               :: ANDROID_MSG_SET_INPUT_QUEUE;
    SAPP_LOGITEM_ANDROID_MSG_DESTROY                                       :: ANDROID_MSG_DESTROY;
    SAPP_LOGITEM_ANDROID_UNKNOWN_MSG                                       :: ANDROID_UNKNOWN_MSG;
    SAPP_LOGITEM_ANDROID_LOOP_THREAD_STARTED                               :: ANDROID_LOOP_THREAD_STARTED;
    SAPP_LOGITEM_ANDROID_LOOP_THREAD_DONE                                  :: ANDROID_LOOP_THREAD_DONE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONSTART                           :: ANDROID_NATIVE_ACTIVITY_ONSTART;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONRESUME                          :: ANDROID_NATIVE_ACTIVITY_ONRESUME;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE               :: ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED              :: ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONPAUSE                           :: ANDROID_NATIVE_ACTIVITY_ONPAUSE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONSTOP                            :: ANDROID_NATIVE_ACTIVITY_ONSTOP;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED             :: ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED           :: ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED               :: ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED             :: ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED            :: ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY                       :: ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONDESTROY                         :: ANDROID_NATIVE_ACTIVITY_ONDESTROY;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_DONE                              :: ANDROID_NATIVE_ACTIVITY_DONE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONCREATE                          :: ANDROID_NATIVE_ACTIVITY_ONCREATE;
    SAPP_LOGITEM_ANDROID_CREATE_THREAD_PIPE_FAILED                         :: ANDROID_CREATE_THREAD_PIPE_FAILED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS                    :: ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS;
    SAPP_LOGITEM_WGPU_SWAPCHAIN_CREATE_SURFACE_FAILED                      :: WGPU_SWAPCHAIN_CREATE_SURFACE_FAILED;
    SAPP_LOGITEM_WGPU_SWAPCHAIN_CREATE_SWAPCHAIN_FAILED                    :: WGPU_SWAPCHAIN_CREATE_SWAPCHAIN_FAILED;
    SAPP_LOGITEM_WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_TEXTURE_FAILED        :: WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_TEXTURE_FAILED;
    SAPP_LOGITEM_WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_VIEW_FAILED           :: WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_VIEW_FAILED;
    SAPP_LOGITEM_WGPU_SWAPCHAIN_CREATE_MSAA_TEXTURE_FAILED                 :: WGPU_SWAPCHAIN_CREATE_MSAA_TEXTURE_FAILED;
    SAPP_LOGITEM_WGPU_SWAPCHAIN_CREATE_MSAA_VIEW_FAILED                    :: WGPU_SWAPCHAIN_CREATE_MSAA_VIEW_FAILED;
    SAPP_LOGITEM_WGPU_REQUEST_DEVICE_STATUS_ERROR                          :: WGPU_REQUEST_DEVICE_STATUS_ERROR;
    SAPP_LOGITEM_WGPU_REQUEST_DEVICE_STATUS_UNKNOWN                        :: WGPU_REQUEST_DEVICE_STATUS_UNKNOWN;
    SAPP_LOGITEM_WGPU_REQUEST_ADAPTER_STATUS_UNAVAILABLE                   :: WGPU_REQUEST_ADAPTER_STATUS_UNAVAILABLE;
    SAPP_LOGITEM_WGPU_REQUEST_ADAPTER_STATUS_ERROR                         :: WGPU_REQUEST_ADAPTER_STATUS_ERROR;
    SAPP_LOGITEM_WGPU_REQUEST_ADAPTER_STATUS_UNKNOWN                       :: WGPU_REQUEST_ADAPTER_STATUS_UNKNOWN;
    SAPP_LOGITEM_WGPU_CREATE_INSTANCE_FAILED                               :: WGPU_CREATE_INSTANCE_FAILED;
    SAPP_LOGITEM_IMAGE_DATA_SIZE_MISMATCH                                  :: IMAGE_DATA_SIZE_MISMATCH;
    SAPP_LOGITEM_DROPPED_FILE_PATH_TOO_LONG                                :: DROPPED_FILE_PATH_TOO_LONG;
    SAPP_LOGITEM_CLIPBOARD_STRING_TOO_BIG                                  :: CLIPBOARD_STRING_TOO_BIG;
}

/*
sapp_logger

Used in sapp_desc to provide a logging function. Please be aware that
without logging function, sokol-app will be completely silent, e.g. it will
not report errors or warnings. For maximum error verbosity, compile in
debug mode (e.g. NDEBUG *not* defined) and install a logger (for instance
the standard logging function from sokol_log.h).
*/
sapp_logger :: struct {
    func:      #type (tag: *u8, log_level: u32, log_item_id: u32, message_or_null: *u8, line_nr: u32, filename_or_null: *u8, user_data: *void) -> void #c_call;

    user_data: *void;
}

sapp_desc :: struct {
    init_cb:                                         #type () -> void #c_call; // these are the user-provided callbacks without user data
    frame_cb:                                        #type () -> void #c_call;
    cleanup_cb:                                      #type () -> void #c_call;
    event_cb:                                        #type (unknown0: *sapp_event) -> void #c_call;

    user_data:                                       *void; // these are the user-provided callbacks with user data
    init_userdata_cb:                                #type (unknown0: *void) -> void #c_call;
    frame_userdata_cb:                               #type (unknown0: *void) -> void #c_call;
    cleanup_userdata_cb:                             #type (unknown0: *void) -> void #c_call;
    event_userdata_cb:                               #type (unknown0: *sapp_event, unknown1: *void) -> void #c_call;

    width:                                           s32; // the preferred width of the window / canvas
    height:                                          s32; // the preferred height of the window / canvas
    sample_count:                                    s32; // MSAA sample count
    swap_interval:                                   s32; // the preferred swap interval (ignored on some platforms)
    high_dpi:                                        bool; // whether the rendering canvas is full-resolution on HighDPI displays
    fullscreen:                                      bool; // whether the window should be created in fullscreen mode
    alpha:                                           bool; // whether the framebuffer should have an alpha channel (ignored on some platforms)
    window_title:                                    *u8; // the window title as UTF-8 encoded string
    enable_clipboard:                                bool; // enable clipboard access, default is false
    clipboard_size:                                  s32; // max size of clipboard content in bytes
    enable_dragndrop:                                bool; // enable file dropping (drag'n'drop), default is false
    max_dropped_files:                               s32; // max number of dropped files to process (default: 1)
    max_dropped_file_path_length:                    s32; // max length in bytes of a dropped UTF-8 file path (default: 2048)
    icon:                                            sapp_icon_desc; // the initial window icon to set
    allocator:                                       sapp_allocator; // optional memory allocation overrides (default: malloc/free)
    logger:                                          sapp_logger; // logging callback override (default: NO LOGGING!)

    gl_major_version:                                s32; // override GL major and minor version (the default GL version is 4.1 on macOS, 4.3 elsewhere)
    gl_minor_version:                                s32;
    win32_console_utf8:                              bool; // if true, set the output console codepage to UTF-8
    win32_console_create:                            bool; // if true, attach stdout/stderr to a new console window
    win32_console_attach:                            bool; // if true, attach stdout/stderr to parent process
    html5_canvas_name:                               *u8; // the name (id) of the HTML5 canvas element, default is "canvas"
    html5_canvas_resize:                             bool; // if true, the HTML5 canvas size is set to sapp_desc.width/height, otherwise canvas size is tracked
    html5_preserve_drawing_buffer:                   bool; // HTML5 only: whether to preserve default framebuffer content between frames
    html5_premultiplied_alpha:                       bool; // HTML5 only: whether the rendered pixels use premultiplied alpha convention
    html5_ask_leave_site:                            bool; // initial state of the internal html5_ask_leave_site flag (see sapp_html5_ask_leave_site())
    html5_bubble_mouse_events:                       bool; // if true, mouse events will bubble up to the web page
    html5_bubble_touch_events:                       bool; // same for touch events
    html5_bubble_wheel_events:                       bool; // same for wheel events
    html5_bubble_key_events:                         bool; // if true, bubble up *all* key events to browser, not just key events that represent characters
    html5_bubble_char_events:                        bool; // if true, bubble up character events to browser
    html5_use_emsc_set_main_loop:                    bool; // if true, use emscripten_set_main_loop() instead of emscripten_request_animation_frame_loop()
    html5_emsc_set_main_loop_simulate_infinite_loop: bool; // this will be passed as the simulate_infinite_loop arg to emscripten_set_main_loop()
    ios_keyboard_resizes_canvas:                     bool; // if true, showing the iOS keyboard shrinks the canvas
}

/* HTML5 specific: request and response structs for
asynchronously loading dropped-file content.
*/
sapp_html5_fetch_error :: enum u32 {
    NO_ERROR         :: 0;
    BUFFER_TOO_SMALL :: 1;
    OTHER            :: 2;

    SAPP_HTML5_FETCH_ERROR_NO_ERROR         :: NO_ERROR;
    SAPP_HTML5_FETCH_ERROR_BUFFER_TOO_SMALL :: BUFFER_TOO_SMALL;
    SAPP_HTML5_FETCH_ERROR_OTHER            :: OTHER;
}

sapp_html5_fetch_response :: struct {
    succeeded:  bool; // true if the loading operation has succeeded
    error_code: sapp_html5_fetch_error;
    file_index: s32; // index of the dropped file (0..sapp_get_num_dropped_filed()-1)
    data:       sapp_range; // pointer and size of the fetched data (data.ptr == buffer.ptr, data.size <= buffer.size)
    buffer:     sapp_range; // the user-provided buffer ptr/size pair (buffer.ptr == data.ptr, buffer.size >= data.size)
    user_data:  *void; // user-provided user data pointer
}

sapp_html5_fetch_request :: struct {
    dropped_file_index: s32; // 0..sapp_get_num_dropped_files()-1
    callback:           #type (unknown0: *sapp_html5_fetch_response) -> void #c_call; // response callback function pointer (required)
    buffer:             sapp_range; // ptr/size of a memory buffer to load the data into
    user_data:          *void; // optional userdata pointer
}

/*
sapp_mouse_cursor

Predefined cursor image definitions, set with sapp_set_mouse_cursor(sapp_mouse_cursor cursor)
*/
sapp_mouse_cursor :: enum u32 {
    SAPP_MOUSECURSOR_DEFAULT       :: 0;
    SAPP_MOUSECURSOR_ARROW         :: 1;
    SAPP_MOUSECURSOR_IBEAM         :: 2;
    SAPP_MOUSECURSOR_CROSSHAIR     :: 3;
    SAPP_MOUSECURSOR_POINTING_HAND :: 4;
    SAPP_MOUSECURSOR_RESIZE_EW     :: 5;
    SAPP_MOUSECURSOR_RESIZE_NS     :: 6;
    SAPP_MOUSECURSOR_RESIZE_NWSE   :: 7;
    SAPP_MOUSECURSOR_RESIZE_NESW   :: 8;
    SAPP_MOUSECURSOR_RESIZE_ALL    :: 9;
    SAPP_MOUSECURSOR_NOT_ALLOWED   :: 10;
    SAPP_MOUSECURSOR_NUM           :: 11;
    _SAPP_MOUSECURSOR_NUM :: SAPP_MOUSECURSOR_NUM;
}

/* user-provided functions */
sokol_main :: (argc: s32, argv: **u8) -> sapp_desc #foreign libsokol;

/* returns true after sokol-app has been initialized */
sapp_isvalid :: () -> bool #foreign libsokol;

/* returns the current framebuffer width in pixels */
sapp_width :: () -> s32 #foreign libsokol;

/* same as sapp_width(), but returns float */
sapp_widthf :: () -> float #foreign libsokol;

/* returns the current framebuffer height in pixels */
sapp_height :: () -> s32 #foreign libsokol;

/* same as sapp_height(), but returns float */
sapp_heightf :: () -> float #foreign libsokol;

/* get default framebuffer color pixel format */
sapp_color_format :: () -> s32 #foreign libsokol;

/* get default framebuffer depth pixel format */
sapp_depth_format :: () -> s32 #foreign libsokol;

/* get default framebuffer sample count */
sapp_sample_count :: () -> s32 #foreign libsokol;

/* returns true when high_dpi was requested and actually running in a high-dpi scenario */
sapp_high_dpi :: () -> bool #foreign libsokol;

/* returns the dpi scaling factor (window pixels to framebuffer pixels) */
sapp_dpi_scale :: () -> float #foreign libsokol;

/* show or hide the mobile device onscreen keyboard */
sapp_show_keyboard :: (show: bool) -> void #foreign libsokol;

/* return true if the mobile device onscreen keyboard is currently shown */
sapp_keyboard_shown :: () -> bool #foreign libsokol;

/* query fullscreen mode */
sapp_is_fullscreen :: () -> bool #foreign libsokol;

/* toggle fullscreen mode */
sapp_toggle_fullscreen :: () -> void #foreign libsokol;

/* show or hide the mouse cursor */
sapp_show_mouse :: (show: bool) -> void #foreign libsokol;

/* show or hide the mouse cursor */
sapp_mouse_shown :: () -> bool #foreign libsokol;

/* enable/disable mouse-pointer-lock mode */
sapp_lock_mouse :: (lock: bool) -> void #foreign libsokol;

/* return true if in mouse-pointer-lock mode (this may toggle a few frames later) */
sapp_mouse_locked :: () -> bool #foreign libsokol;

/* set mouse cursor type */
sapp_set_mouse_cursor :: (cursor: sapp_mouse_cursor) -> void #foreign libsokol;

/* get current mouse cursor type */
sapp_get_mouse_cursor :: () -> sapp_mouse_cursor #foreign libsokol;

/* return the userdata pointer optionally provided in sapp_desc */
sapp_userdata :: () -> *void #foreign libsokol;

/* return a copy of the sapp_desc structure */
sapp_query_desc :: () -> sapp_desc #foreign libsokol;

/* initiate a "soft quit" (sends SAPP_EVENTTYPE_QUIT_REQUESTED) */
sapp_request_quit :: () -> void #foreign libsokol;

/* cancel a pending quit (when SAPP_EVENTTYPE_QUIT_REQUESTED has been received) */
sapp_cancel_quit :: () -> void #foreign libsokol;

/* initiate a "hard quit" (quit application without sending SAPP_EVENTTYPE_QUIT_REQUESTED) */
sapp_quit :: () -> void #foreign libsokol;

/* call from inside event callback to consume the current event (don't forward to platform) */
sapp_consume_event :: () -> void #foreign libsokol;

/* get the current frame counter (for comparison with sapp_event.frame_count) */
sapp_frame_count :: () -> u64 #foreign libsokol;

/* get an averaged/smoothed frame duration in seconds */
sapp_frame_duration :: () -> float64 #foreign libsokol;

/* write string into clipboard */
sapp_set_clipboard_string :: (str: *u8) -> void #foreign libsokol;

/* read string from clipboard (usually during SAPP_EVENTTYPE_CLIPBOARD_PASTED) */
sapp_get_clipboard_string :: () -> *u8 #foreign libsokol;

/* set the window title (only on desktop platforms) */
sapp_set_window_title :: (str: *u8) -> void #foreign libsokol;

/* set the window icon (only on Windows and Linux) */
sapp_set_icon :: (icon_desc: *sapp_icon_desc) -> void #foreign libsokol;

/* gets the total number of dropped files (after an SAPP_EVENTTYPE_FILES_DROPPED event) */
sapp_get_num_dropped_files :: () -> s32 #foreign libsokol;

/* gets the dropped file paths */
sapp_get_dropped_file_path :: (index: s32) -> *u8 #foreign libsokol;

/* special run-function for SOKOL_NO_ENTRY (in standard mode this is an empty stub) */
sapp_run :: (desc: *sapp_desc) -> void #foreign libsokol;

/* EGL: get EGLDisplay object */
sapp_egl_get_display :: () -> *void #foreign libsokol;

/* EGL: get EGLContext object */
sapp_egl_get_context :: () -> *void #foreign libsokol;

/* HTML5: enable or disable the hardwired "Leave Site?" dialog box */
sapp_html5_ask_leave_site :: (ask: bool) -> void #foreign libsokol;

/* HTML5: get byte size of a dropped file */
sapp_html5_get_dropped_file_size :: (index: s32) -> u32 #foreign libsokol;

/* HTML5: asynchronously load the content of a dropped file */
sapp_html5_fetch_dropped_file :: (request: *sapp_html5_fetch_request) -> void #foreign libsokol;

/* Metal: get bridged pointer to Metal device object */
sapp_metal_get_device :: () -> *void #foreign libsokol;

/* Metal: get bridged pointer to MTKView's current drawable of type CAMetalDrawable */
sapp_metal_get_current_drawable :: () -> *void #foreign libsokol;

/* Metal: get bridged pointer to MTKView's depth-stencil texture of type MTLTexture */
sapp_metal_get_depth_stencil_texture :: () -> *void #foreign libsokol;

/* Metal: get bridged pointer to MTKView's msaa-color-texture of type MTLTexture (may be null) */
sapp_metal_get_msaa_color_texture :: () -> *void #foreign libsokol;

/* macOS: get bridged pointer to macOS NSWindow */
sapp_macos_get_window :: () -> *void #foreign libsokol;

/* iOS: get bridged pointer to iOS UIWindow */
sapp_ios_get_window :: () -> *void #foreign libsokol;

/* D3D11: get pointer to ID3D11Device object */
sapp_d3d11_get_device :: () -> *void #foreign libsokol;

/* D3D11: get pointer to ID3D11DeviceContext object */
sapp_d3d11_get_device_context :: () -> *void #foreign libsokol;

/* D3D11: get pointer to IDXGISwapChain object */
sapp_d3d11_get_swap_chain :: () -> *void #foreign libsokol;

/* D3D11: get pointer to ID3D11RenderTargetView object for rendering */
sapp_d3d11_get_render_view :: () -> *void #foreign libsokol;

/* D3D11: get pointer ID3D11RenderTargetView object for msaa-resolve (may return null) */
sapp_d3d11_get_resolve_view :: () -> *void #foreign libsokol;

/* D3D11: get pointer ID3D11DepthStencilView */
sapp_d3d11_get_depth_stencil_view :: () -> *void #foreign libsokol;

/* Win32: get the HWND window handle */
sapp_win32_get_hwnd :: () -> *void #foreign libsokol;

/* WebGPU: get WGPUDevice handle */
sapp_wgpu_get_device :: () -> *void #foreign libsokol;

/* WebGPU: get swapchain's WGPUTextureView handle for rendering */
sapp_wgpu_get_render_view :: () -> *void #foreign libsokol;

/* WebGPU: get swapchain's MSAA-resolve WGPUTextureView (may return null) */
sapp_wgpu_get_resolve_view :: () -> *void #foreign libsokol;

/* WebGPU: get swapchain's WGPUTextureView for the depth-stencil surface */
sapp_wgpu_get_depth_stencil_view :: () -> *void #foreign libsokol;

/* GL: get framebuffer object */
sapp_gl_get_framebuffer :: () -> u32 #foreign libsokol;

/* GL: get major version (only valid for desktop GL) */
sapp_gl_get_major_version :: () -> s32 #foreign libsokol;

/* GL: get minor version (only valid for desktop GL) */
sapp_gl_get_minor_version :: () -> s32 #foreign libsokol;

/* Android: get native activity handle */
sapp_android_get_native_activity :: () -> *void #foreign libsokol;

/*
Resource id typedefs:

sg_buffer:      vertex- and index-buffers
sg_image:       images used as textures and render targets
sg_sampler      sampler object describing how a texture is sampled in a shader
sg_shader:      vertex- and fragment-shaders and shader interface information
sg_pipeline:    associated shader and vertex-layouts, and render states
sg_attachments: a baked collection of render pass attachment images

Instead of pointers, resource creation functions return a 32-bit
number which uniquely identifies the resource object.

The 32-bit resource id is split into a 16-bit pool index in the lower bits,
and a 16-bit 'generation counter' in the upper bits. The index allows fast
pool lookups, and combined with the generation-counter it allows to detect
'dangling accesses' (trying to use an object which no longer exists, and
its pool slot has been reused for a new object)

The resource ids are wrapped into a strongly-typed struct so that
trying to pass an incompatible resource id is a compile error.
*/
sg_buffer :: struct {
    id: u32;
}
sg_image :: struct {
    id: u32;
}
sg_sampler :: struct {
    id: u32;
}
sg_shader :: struct {
    id: u32;
}
sg_pipeline :: struct {
    id: u32;
}
sg_attachments :: struct {
    id: u32;
}

/*
sg_range is a pointer-size-pair struct used to pass memory blobs into
sokol-gfx. When initialized from a value type (array or struct), you can
use the SG_RANGE() macro to build an sg_range struct. For functions which
take either a sg_range pointer, or a (C++) sg_range reference, use the
SG_RANGE_REF macro as a solution which compiles both in C and C++.
*/
sg_range :: struct {
    ptr:  *void;
    size: u64;
}

//  various compile-time constants
SG :: enum u32 {
    INVALID_ID                        :: 0;
    NUM_SHADER_STAGES                 :: 2;
    NUM_INFLIGHT_FRAMES               :: 2;
    MAX_COLOR_ATTACHMENTS             :: 4;
    MAX_VERTEX_BUFFERS                :: 8;
    MAX_SHADERSTAGE_IMAGES            :: 12;
    MAX_SHADERSTAGE_SAMPLERS          :: 8;
    MAX_SHADERSTAGE_IMAGESAMPLERPAIRS :: 12;
    MAX_SHADERSTAGE_STORAGEBUFFERS    :: 8;
    MAX_SHADERSTAGE_UBS               :: 4;
    MAX_UB_MEMBERS                    :: 16;
    MAX_VERTEX_ATTRIBUTES             :: 16;
    MAX_MIPMAPS                       :: 16;
    MAX_TEXTUREARRAY_LAYERS           :: 128;

    SG_INVALID_ID                        :: INVALID_ID;
    SG_NUM_SHADER_STAGES                 :: NUM_SHADER_STAGES;
    SG_NUM_INFLIGHT_FRAMES               :: NUM_INFLIGHT_FRAMES;
    SG_MAX_COLOR_ATTACHMENTS             :: MAX_COLOR_ATTACHMENTS;
    SG_MAX_VERTEX_BUFFERS                :: MAX_VERTEX_BUFFERS;
    SG_MAX_SHADERSTAGE_IMAGES            :: MAX_SHADERSTAGE_IMAGES;
    SG_MAX_SHADERSTAGE_SAMPLERS          :: MAX_SHADERSTAGE_SAMPLERS;
    SG_MAX_SHADERSTAGE_IMAGESAMPLERPAIRS :: MAX_SHADERSTAGE_IMAGESAMPLERPAIRS;
    SG_MAX_SHADERSTAGE_STORAGEBUFFERS    :: MAX_SHADERSTAGE_STORAGEBUFFERS;
    SG_MAX_SHADERSTAGE_UBS               :: MAX_SHADERSTAGE_UBS;
    SG_MAX_UB_MEMBERS                    :: MAX_UB_MEMBERS;
    SG_MAX_VERTEX_ATTRIBUTES             :: MAX_VERTEX_ATTRIBUTES;
    SG_MAX_MIPMAPS                       :: MAX_MIPMAPS;
    SG_MAX_TEXTUREARRAY_LAYERS           :: MAX_TEXTUREARRAY_LAYERS;
}

/*
sg_color

An RGBA color value.
*/
sg_color :: struct {
    r: float;
    g: float;
    b: float;
    a: float;
}

/*
sg_backend

The active 3D-API backend, use the function sg_query_backend()
to get the currently active backend.
*/
sg_backend :: enum u32 {
    GLCORE          :: 0;
    GLES3           :: 1;
    D3D11           :: 2;
    METAL_IOS       :: 3;
    METAL_MACOS     :: 4;
    METAL_SIMULATOR :: 5;
    WGPU            :: 6;
    DUMMY           :: 7;

    SG_BACKEND_GLCORE          :: GLCORE;
    SG_BACKEND_GLES3           :: GLES3;
    SG_BACKEND_D3D11           :: D3D11;
    SG_BACKEND_METAL_IOS       :: METAL_IOS;
    SG_BACKEND_METAL_MACOS     :: METAL_MACOS;
    SG_BACKEND_METAL_SIMULATOR :: METAL_SIMULATOR;
    SG_BACKEND_WGPU            :: WGPU;
    SG_BACKEND_DUMMY           :: DUMMY;
}

/*
sg_pixel_format

sokol_gfx.h basically uses the same pixel formats as WebGPU, since these
are supported on most newer GPUs.

A pixelformat name consist of three parts:

- components (R, RG, RGB or RGBA)
- bit width per component (8, 16 or 32)
- component data type:
- unsigned normalized (no postfix)
- signed normalized (SN postfix)
- unsigned integer (UI postfix)
- signed integer (SI postfix)
- float (F postfix)

Not all pixel formats can be used for everything, call sg_query_pixelformat()
to inspect the capabilities of a given pixelformat. The function returns
an sg_pixelformat_info struct with the following members:

- sample: the pixelformat can be sampled as texture at least with
nearest filtering
- filter: the pixelformat can be samples as texture with linear
filtering
- render: the pixelformat can be used for render targets
- blend:  blending is supported when using the pixelformat for
render targets
- msaa:   multisample-antialiasing is supported when using the
pixelformat for render targets
- depth:  the pixelformat can be used for depth-stencil attachments
- compressed: this is a block-compressed format
- bytes_per_pixel: the numbers of bytes in a pixel (0 for compressed formats)

The default pixel format for texture images is SG_PIXELFORMAT_RGBA8.

The default pixel format for render target images is platform-dependent
and taken from the sg_environment struct passed into sg_setup(). Typically
the default formats are:

- for the Metal, D3D11 and WebGPU backends: SG_PIXELFORMAT_BGRA8
- for GL backends: SG_PIXELFORMAT_RGBA8
*/
sg_pixel_format :: enum u32 {
    SG_PIXELFORMAT_DEFAULT         :: 0;
    SG_PIXELFORMAT_NONE            :: 1;

    SG_PIXELFORMAT_R8              :: 2;
    SG_PIXELFORMAT_R8SN            :: 3;
    SG_PIXELFORMAT_R8UI            :: 4;
    SG_PIXELFORMAT_R8SI            :: 5;

    SG_PIXELFORMAT_R16             :: 6;
    SG_PIXELFORMAT_R16SN           :: 7;
    SG_PIXELFORMAT_R16UI           :: 8;
    SG_PIXELFORMAT_R16SI           :: 9;
    SG_PIXELFORMAT_R16F            :: 10;
    SG_PIXELFORMAT_RG8             :: 11;
    SG_PIXELFORMAT_RG8SN           :: 12;
    SG_PIXELFORMAT_RG8UI           :: 13;
    SG_PIXELFORMAT_RG8SI           :: 14;

    SG_PIXELFORMAT_R32UI           :: 15;
    SG_PIXELFORMAT_R32SI           :: 16;
    SG_PIXELFORMAT_R32F            :: 17;
    SG_PIXELFORMAT_RG16            :: 18;
    SG_PIXELFORMAT_RG16SN          :: 19;
    SG_PIXELFORMAT_RG16UI          :: 20;
    SG_PIXELFORMAT_RG16SI          :: 21;
    SG_PIXELFORMAT_RG16F           :: 22;
    SG_PIXELFORMAT_RGBA8           :: 23;
    SG_PIXELFORMAT_SRGB8A8         :: 24;
    SG_PIXELFORMAT_RGBA8SN         :: 25;
    SG_PIXELFORMAT_RGBA8UI         :: 26;
    SG_PIXELFORMAT_RGBA8SI         :: 27;
    SG_PIXELFORMAT_BGRA8           :: 28;
    SG_PIXELFORMAT_RGB10A2         :: 29;
    SG_PIXELFORMAT_RG11B10F        :: 30;
    SG_PIXELFORMAT_RGB9E5          :: 31;

    SG_PIXELFORMAT_RG32UI          :: 32;
    SG_PIXELFORMAT_RG32SI          :: 33;
    SG_PIXELFORMAT_RG32F           :: 34;
    SG_PIXELFORMAT_RGBA16          :: 35;
    SG_PIXELFORMAT_RGBA16SN        :: 36;
    SG_PIXELFORMAT_RGBA16UI        :: 37;
    SG_PIXELFORMAT_RGBA16SI        :: 38;
    SG_PIXELFORMAT_RGBA16F         :: 39;

    SG_PIXELFORMAT_RGBA32UI        :: 40;
    SG_PIXELFORMAT_RGBA32SI        :: 41;
    SG_PIXELFORMAT_RGBA32F         :: 42;

    SG_PIXELFORMAT_DEPTH           :: 43;
    SG_PIXELFORMAT_DEPTH_STENCIL   :: 44;

    SG_PIXELFORMAT_BC1_RGBA        :: 45;
    SG_PIXELFORMAT_BC2_RGBA        :: 46;
    SG_PIXELFORMAT_BC3_RGBA        :: 47;
    SG_PIXELFORMAT_BC3_SRGBA       :: 48;
    SG_PIXELFORMAT_BC4_R           :: 49;
    SG_PIXELFORMAT_BC4_RSN         :: 50;
    SG_PIXELFORMAT_BC5_RG          :: 51;
    SG_PIXELFORMAT_BC5_RGSN        :: 52;
    SG_PIXELFORMAT_BC6H_RGBF       :: 53;
    SG_PIXELFORMAT_BC6H_RGBUF      :: 54;
    SG_PIXELFORMAT_BC7_RGBA        :: 55;
    SG_PIXELFORMAT_BC7_SRGBA       :: 56;
    SG_PIXELFORMAT_PVRTC_RGB_2BPP  :: 57;
    SG_PIXELFORMAT_PVRTC_RGB_4BPP  :: 58;
    SG_PIXELFORMAT_PVRTC_RGBA_2BPP :: 59;
    SG_PIXELFORMAT_PVRTC_RGBA_4BPP :: 60;
    SG_PIXELFORMAT_ETC2_RGB8       :: 61;
    SG_PIXELFORMAT_ETC2_SRGB8      :: 62;
    SG_PIXELFORMAT_ETC2_RGB8A1     :: 63;
    SG_PIXELFORMAT_ETC2_RGBA8      :: 64;
    SG_PIXELFORMAT_ETC2_SRGB8A8    :: 65;
    SG_PIXELFORMAT_EAC_R11         :: 66;
    SG_PIXELFORMAT_EAC_R11SN       :: 67;
    SG_PIXELFORMAT_EAC_RG11        :: 68;
    SG_PIXELFORMAT_EAC_RG11SN      :: 69;

    SG_PIXELFORMAT_ASTC_4x4_RGBA   :: 70;
    SG_PIXELFORMAT_ASTC_4x4_SRGBA  :: 71;

    SG_PIXELFORMAT_NUM             :: 72;
    SG_PIXELFORMAT_FORCE_U32       :: 2147483647;

    _SG_PIXELFORMAT_DEFAULT   :: SG_PIXELFORMAT_DEFAULT;

    _SG_PIXELFORMAT_NUM       :: SG_PIXELFORMAT_NUM;
    _SG_PIXELFORMAT_FORCE_U32 :: SG_PIXELFORMAT_FORCE_U32;
}

/*
Runtime information about a pixel format, returned
by sg_query_pixelformat().
*/
sg_pixelformat_info :: struct {
    sample:          bool; // pixel format can be sampled in shaders at least with nearest filtering
    filter:          bool; // pixel format can be sampled with linear filtering
    render:          bool; // pixel format can be used as render target
    blend:           bool; // alpha-blending is supported
    msaa:            bool; // pixel format can be used as MSAA render target
    depth:           bool; // pixel format is a depth format
    compressed:      bool; // true if this is a hardware-compressed format
    bytes_per_pixel: s32; // NOTE: this is 0 for compressed formats, use sg_query_row_pitch() / sg_query_surface_pitch() as alternative
}

/*
Runtime information about available optional features,
returned by sg_query_features()
*/
sg_features :: struct {
    origin_top_left:             bool; // framebuffer and texture origin is in top left corner
    image_clamp_to_border:       bool; // border color and clamp-to-border UV-wrap mode is supported
    mrt_independent_blend_state: bool; // multiple-render-target rendering can use per-render-target blend state
    mrt_independent_write_mask:  bool; // multiple-render-target rendering can use per-render-target color write masks
    storage_buffer:              bool; // storage buffers are supported
}

/*
Runtime information about resource limits, returned by sg_query_limit()
*/
sg_limits :: struct {
    max_image_size_2d:                   s32; // max width/height of SG_IMAGETYPE_2D images
    max_image_size_cube:                 s32; // max width/height of SG_IMAGETYPE_CUBE images
    max_image_size_3d:                   s32; // max width/height/depth of SG_IMAGETYPE_3D images
    max_image_size_array:                s32; // max width/height of SG_IMAGETYPE_ARRAY images
    max_image_array_layers:              s32; // max number of layers in SG_IMAGETYPE_ARRAY images
    max_vertex_attrs:                    s32; // max number of vertex attributes, clamped to SG_MAX_VERTEX_ATTRIBUTES
    gl_max_vertex_uniform_components:    s32; // <= GL_MAX_VERTEX_UNIFORM_COMPONENTS (only on GL backends)
    gl_max_combined_texture_image_units: s32; // <= GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS (only on GL backends)
}

/*
sg_resource_state

The current state of a resource in its resource pool.
Resources start in the INITIAL state, which means the
pool slot is unoccupied and can be allocated. When a resource is
created, first an id is allocated, and the resource pool slot
is set to state ALLOC. After allocation, the resource is
initialized, which may result in the VALID or FAILED state. The
reason why allocation and initialization are separate is because
some resource types (e.g. buffers and images) might be asynchronously
initialized by the user application. If a resource which is not
in the VALID state is attempted to be used for rendering, rendering
operations will silently be dropped.

The special INVALID state is returned in sg_query_xxx_state() if no
resource object exists for the provided resource id.
*/
sg_resource_state :: enum u32 {
    SG_RESOURCESTATE_INITIAL   :: 0;
    SG_RESOURCESTATE_ALLOC     :: 1;
    SG_RESOURCESTATE_VALID     :: 2;
    SG_RESOURCESTATE_FAILED    :: 3;
    SG_RESOURCESTATE_INVALID   :: 4;
    SG_RESOURCESTATE_FORCE_U32 :: 2147483647;
    _SG_RESOURCESTATE_FORCE_U32 :: SG_RESOURCESTATE_FORCE_U32;
}

/*
sg_usage

A resource usage hint describing the update strategy of
buffers and images. This is used in the sg_buffer_desc.usage
and sg_image_desc.usage members when creating buffers
and images:

SG_USAGE_IMMUTABLE:     the resource will never be updated with
new data, instead the content of the
resource must be provided on creation
SG_USAGE_DYNAMIC:       the resource will be updated infrequently
with new data (this could range from "once
after creation", to "quite often but not
every frame")
SG_USAGE_STREAM:        the resource will be updated each frame
with new content

The rendering backends use this hint to prevent that the
CPU needs to wait for the GPU when attempting to update
a resource that might be currently accessed by the GPU.

Resource content is updated with the functions sg_update_buffer() or
sg_append_buffer() for buffer objects, and sg_update_image() for image
objects. For the sg_update_*() functions, only one update is allowed per
frame and resource object, while sg_append_buffer() can be called
multiple times per frame on the same buffer. The application must update
all data required for rendering (this means that the update data can be
smaller than the resource size, if only a part of the overall resource
size is used for rendering, you only need to make sure that the data that
*is* used is valid).

The default usage is SG_USAGE_IMMUTABLE.
*/
sg_usage :: enum u32 {
    SG_USAGE_DEFAULT   :: 0;
    SG_USAGE_IMMUTABLE :: 1;
    SG_USAGE_DYNAMIC   :: 2;
    SG_USAGE_STREAM    :: 3;
    SG_USAGE_NUM       :: 4;
    SG_USAGE_FORCE_U32 :: 2147483647;

    _SG_USAGE_DEFAULT   :: SG_USAGE_DEFAULT;

    _SG_USAGE_NUM       :: SG_USAGE_NUM;
    _SG_USAGE_FORCE_U32 :: SG_USAGE_FORCE_U32;
}

/*
sg_buffer_type

Indicates whether a buffer will be bound as vertex-,
index- or storage-buffer.

Used in the sg_buffer_desc.type member when creating a buffer.

The default value is SG_BUFFERTYPE_VERTEXBUFFER.
*/
sg_buffer_type :: enum u32 {
    SG_BUFFERTYPE_DEFAULT       :: 0;
    SG_BUFFERTYPE_VERTEXBUFFER  :: 1;
    SG_BUFFERTYPE_INDEXBUFFER   :: 2;
    SG_BUFFERTYPE_STORAGEBUFFER :: 3;
    SG_BUFFERTYPE_NUM           :: 4;
    SG_BUFFERTYPE_FORCE_U32     :: 2147483647;

    _SG_BUFFERTYPE_DEFAULT   :: SG_BUFFERTYPE_DEFAULT;

    _SG_BUFFERTYPE_NUM       :: SG_BUFFERTYPE_NUM;
    _SG_BUFFERTYPE_FORCE_U32 :: SG_BUFFERTYPE_FORCE_U32;
}

/*
sg_index_type

Indicates whether indexed rendering (fetching vertex-indices from an
index buffer) is used, and if yes, the index data type (16- or 32-bits).
This is used in the sg_pipeline_desc.index_type member when creating a
pipeline object.

The default index type is SG_INDEXTYPE_NONE.
*/
sg_index_type :: enum u32 {
    SG_INDEXTYPE_DEFAULT   :: 0;
    SG_INDEXTYPE_NONE      :: 1;
    SG_INDEXTYPE_UINT16    :: 2;
    SG_INDEXTYPE_UINT32    :: 3;
    SG_INDEXTYPE_NUM       :: 4;
    SG_INDEXTYPE_FORCE_U32 :: 2147483647;

    _SG_INDEXTYPE_DEFAULT   :: SG_INDEXTYPE_DEFAULT;

    _SG_INDEXTYPE_NUM       :: SG_INDEXTYPE_NUM;
    _SG_INDEXTYPE_FORCE_U32 :: SG_INDEXTYPE_FORCE_U32;
}

/*
sg_image_type

Indicates the basic type of an image object (2D-texture, cubemap,
3D-texture or 2D-array-texture). Used in the sg_image_desc.type member when
creating an image, and in sg_shader_image_desc to describe a sampled texture
in the shader (both must match and will be checked in the validation layer
when calling sg_apply_bindings).

The default image type when creating an image is SG_IMAGETYPE_2D.
*/
sg_image_type :: enum u32 {
    SG_IMAGETYPE_DEFAULT   :: 0;
    SG_IMAGETYPE_2D        :: 1;
    SG_IMAGETYPE_CUBE      :: 2;
    SG_IMAGETYPE_3D        :: 3;
    SG_IMAGETYPE_ARRAY     :: 4;
    SG_IMAGETYPE_NUM       :: 5;
    SG_IMAGETYPE_FORCE_U32 :: 2147483647;

    _SG_IMAGETYPE_DEFAULT   :: SG_IMAGETYPE_DEFAULT;

    _SG_IMAGETYPE_NUM       :: SG_IMAGETYPE_NUM;
    _SG_IMAGETYPE_FORCE_U32 :: SG_IMAGETYPE_FORCE_U32;
}

/*
sg_image_sample_type

The basic data type of a texture sample as expected by a shader.
Must be provided in sg_shader_image_desc and used by the validation
layer in sg_apply_bindings() to check if the provided image object
is compatible with what the shader expects. Apart from the sokol-gfx
validation layer, WebGPU is the only backend API which actually requires
matching texture and sampler type to be provided upfront for validation
(other 3D APIs treat texture/sampler type mismatches as undefined behaviour).

NOTE that the following texture pixel formats require the use
of SG_IMAGESAMPLETYPE_UNFILTERABLE_FLOAT, combined with a sampler
of type SG_SAMPLERTYPE_NONFILTERING:

- SG_PIXELFORMAT_R32F
- SG_PIXELFORMAT_RG32F
- SG_PIXELFORMAT_RGBA32F

(when using sokol-shdc, also check out the meta tags `@image_sample_type`
and `@sampler_type`)
*/
sg_image_sample_type :: enum u32 {
    SG_IMAGESAMPLETYPE_DEFAULT            :: 0;
    SG_IMAGESAMPLETYPE_FLOAT              :: 1;
    SG_IMAGESAMPLETYPE_DEPTH              :: 2;
    SG_IMAGESAMPLETYPE_SINT               :: 3;
    SG_IMAGESAMPLETYPE_UINT               :: 4;
    SG_IMAGESAMPLETYPE_UNFILTERABLE_FLOAT :: 5;
    SG_IMAGESAMPLETYPE_NUM                :: 6;
    SG_IMAGESAMPLETYPE_FORCE_U32          :: 2147483647;

    _SG_IMAGESAMPLETYPE_DEFAULT   :: SG_IMAGESAMPLETYPE_DEFAULT;

    _SG_IMAGESAMPLETYPE_NUM       :: SG_IMAGESAMPLETYPE_NUM;
    _SG_IMAGESAMPLETYPE_FORCE_U32 :: SG_IMAGESAMPLETYPE_FORCE_U32;
}

/*
sg_sampler_type

The basic type of a texture sampler (sampling vs comparison) as
defined in a shader. Must be provided in sg_shader_sampler_desc.

sg_image_sample_type and sg_sampler_type for a texture/sampler
pair must be compatible with each other, specifically only
the following pairs are allowed:

- SG_IMAGESAMPLETYPE_FLOAT => (SG_SAMPLERTYPE_FILTERING or SG_SAMPLERTYPE_NONFILTERING)
- SG_IMAGESAMPLETYPE_UNFILTERABLE_FLOAT => SG_SAMPLERTYPE_NONFILTERING
- SG_IMAGESAMPLETYPE_SINT => SG_SAMPLERTYPE_NONFILTERING
- SG_IMAGESAMPLETYPE_UINT => SG_SAMPLERTYPE_NONFILTERING
- SG_IMAGESAMPLETYPE_DEPTH => SG_SAMPLERTYPE_COMPARISON
*/
sg_sampler_type :: enum u32 {
    SG_SAMPLERTYPE_DEFAULT      :: 0;
    SG_SAMPLERTYPE_FILTERING    :: 1;
    SG_SAMPLERTYPE_NONFILTERING :: 2;
    SG_SAMPLERTYPE_COMPARISON   :: 3;
    SG_SAMPLERTYPE_NUM          :: 4;
    SG_SAMPLERTYPE_FORCE_U32    :: 5;

    _SG_SAMPLERTYPE_DEFAULT   :: SG_SAMPLERTYPE_DEFAULT;

    _SG_SAMPLERTYPE_NUM       :: SG_SAMPLERTYPE_NUM;
    _SG_SAMPLERTYPE_FORCE_U32 :: SG_SAMPLERTYPE_FORCE_U32;
}

/*
sg_cube_face

The cubemap faces. Use these as indices in the sg_image_desc.content
array.
*/
sg_cube_face :: enum u32 {
    SG_CUBEFACE_POS_X     :: 0;
    SG_CUBEFACE_NEG_X     :: 1;
    SG_CUBEFACE_POS_Y     :: 2;
    SG_CUBEFACE_NEG_Y     :: 3;
    SG_CUBEFACE_POS_Z     :: 4;
    SG_CUBEFACE_NEG_Z     :: 5;
    SG_CUBEFACE_NUM       :: 6;
    SG_CUBEFACE_FORCE_U32 :: 2147483647;
    _SG_CUBEFACE_FORCE_U32 :: SG_CUBEFACE_FORCE_U32;
}

/*
sg_shader_stage

There are 2 shader stages: vertex- and fragment-shader-stage.
Each shader stage

- SG_MAX_SHADERSTAGE_UBS slots for applying uniform data
- SG_MAX_SHADERSTAGE_IMAGES slots for images used as textures
- SG_MAX_SHADERSTAGE_SAMPLERS slots for texture samplers
- SG_MAX_SHADERSTAGE_STORAGEBUFFERS slots for storage buffer bindings
*/
sg_shader_stage :: enum u32 {
    SG_SHADERSTAGE_VS        :: 0;
    SG_SHADERSTAGE_FS        :: 1;
    SG_SHADERSTAGE_FORCE_U32 :: 2147483647;
    _SG_SHADERSTAGE_FORCE_U32 :: SG_SHADERSTAGE_FORCE_U32;
}

/*
sg_primitive_type

This is the common subset of 3D primitive types supported across all 3D
APIs. This is used in the sg_pipeline_desc.primitive_type member when
creating a pipeline object.

The default primitive type is SG_PRIMITIVETYPE_TRIANGLES.
*/
sg_primitive_type :: enum u32 {
    SG_PRIMITIVETYPE_DEFAULT        :: 0;
    SG_PRIMITIVETYPE_POINTS         :: 1;
    SG_PRIMITIVETYPE_LINES          :: 2;
    SG_PRIMITIVETYPE_LINE_STRIP     :: 3;
    SG_PRIMITIVETYPE_TRIANGLES      :: 4;
    SG_PRIMITIVETYPE_TRIANGLE_STRIP :: 5;
    SG_PRIMITIVETYPE_NUM            :: 6;
    SG_PRIMITIVETYPE_FORCE_U32      :: 2147483647;

    _SG_PRIMITIVETYPE_DEFAULT   :: SG_PRIMITIVETYPE_DEFAULT;

    _SG_PRIMITIVETYPE_NUM       :: SG_PRIMITIVETYPE_NUM;
    _SG_PRIMITIVETYPE_FORCE_U32 :: SG_PRIMITIVETYPE_FORCE_U32;
}

/*
sg_filter

The filtering mode when sampling a texture image. This is
used in the sg_sampler_desc.min_filter, sg_sampler_desc.mag_filter
and sg_sampler_desc.mipmap_filter members when creating a sampler object.

For min_filter and mag_filter the default is SG_FILTER_NEAREST.

For mipmap_filter the default is SG_FILTER_NONE.
*/
sg_filter :: enum u32 {
    SG_FILTER_DEFAULT   :: 0;
    SG_FILTER_NONE      :: 1;
    SG_FILTER_NEAREST   :: 2;
    SG_FILTER_LINEAR    :: 3;
    SG_FILTER_NUM       :: 4;
    SG_FILTER_FORCE_U32 :: 2147483647;

    _SG_FILTER_DEFAULT   :: SG_FILTER_DEFAULT;

    _SG_FILTER_NUM       :: SG_FILTER_NUM;
    _SG_FILTER_FORCE_U32 :: SG_FILTER_FORCE_U32;
}

/*
sg_wrap

The texture coordinates wrapping mode when sampling a texture
image. This is used in the sg_image_desc.wrap_u, .wrap_v
and .wrap_w members when creating an image.

The default wrap mode is SG_WRAP_REPEAT.

NOTE: SG_WRAP_CLAMP_TO_BORDER is not supported on all backends
and platforms. To check for support, call sg_query_features()
and check the "clamp_to_border" boolean in the returned
sg_features struct.

Platforms which don't support SG_WRAP_CLAMP_TO_BORDER will silently fall back
to SG_WRAP_CLAMP_TO_EDGE without a validation error.
*/
sg_wrap :: enum u32 {
    SG_WRAP_DEFAULT         :: 0;
    SG_WRAP_REPEAT          :: 1;
    SG_WRAP_CLAMP_TO_EDGE   :: 2;
    SG_WRAP_CLAMP_TO_BORDER :: 3;
    SG_WRAP_MIRRORED_REPEAT :: 4;
    SG_WRAP_NUM             :: 5;
    SG_WRAP_FORCE_U32       :: 2147483647;

    _SG_WRAP_DEFAULT   :: SG_WRAP_DEFAULT;

    _SG_WRAP_NUM       :: SG_WRAP_NUM;
    _SG_WRAP_FORCE_U32 :: SG_WRAP_FORCE_U32;
}

/*
sg_border_color

The border color to use when sampling a texture, and the UV wrap
mode is SG_WRAP_CLAMP_TO_BORDER.

The default border color is SG_BORDERCOLOR_OPAQUE_BLACK
*/
sg_border_color :: enum u32 {
    SG_BORDERCOLOR_DEFAULT           :: 0;
    SG_BORDERCOLOR_TRANSPARENT_BLACK :: 1;
    SG_BORDERCOLOR_OPAQUE_BLACK      :: 2;
    SG_BORDERCOLOR_OPAQUE_WHITE      :: 3;
    SG_BORDERCOLOR_NUM               :: 4;
    SG_BORDERCOLOR_FORCE_U32         :: 2147483647;

    _SG_BORDERCOLOR_DEFAULT   :: SG_BORDERCOLOR_DEFAULT;

    _SG_BORDERCOLOR_NUM       :: SG_BORDERCOLOR_NUM;
    _SG_BORDERCOLOR_FORCE_U32 :: SG_BORDERCOLOR_FORCE_U32;
}

/*
sg_vertex_format

The data type of a vertex component. This is used to describe
the layout of vertex data when creating a pipeline object.
*/
sg_vertex_format :: enum u32 {
    SG_VERTEXFORMAT_INVALID   :: 0;
    SG_VERTEXFORMAT_FLOAT     :: 1;
    SG_VERTEXFORMAT_FLOAT2    :: 2;
    SG_VERTEXFORMAT_FLOAT3    :: 3;
    SG_VERTEXFORMAT_FLOAT4    :: 4;
    SG_VERTEXFORMAT_BYTE4     :: 5;
    SG_VERTEXFORMAT_BYTE4N    :: 6;
    SG_VERTEXFORMAT_UBYTE4    :: 7;
    SG_VERTEXFORMAT_UBYTE4N   :: 8;
    SG_VERTEXFORMAT_SHORT2    :: 9;
    SG_VERTEXFORMAT_SHORT2N   :: 10;
    SG_VERTEXFORMAT_USHORT2N  :: 11;
    SG_VERTEXFORMAT_SHORT4    :: 12;
    SG_VERTEXFORMAT_SHORT4N   :: 13;
    SG_VERTEXFORMAT_USHORT4N  :: 14;
    SG_VERTEXFORMAT_UINT10_N2 :: 15;
    SG_VERTEXFORMAT_HALF2     :: 16;
    SG_VERTEXFORMAT_HALF4     :: 17;
    SG_VERTEXFORMAT_NUM       :: 18;
    SG_VERTEXFORMAT_FORCE_U32 :: 2147483647;

    _SG_VERTEXFORMAT_NUM       :: SG_VERTEXFORMAT_NUM;
    _SG_VERTEXFORMAT_FORCE_U32 :: SG_VERTEXFORMAT_FORCE_U32;
}

/*
sg_vertex_step

Defines whether the input pointer of a vertex input stream is advanced
'per vertex' or 'per instance'. The default step-func is
SG_VERTEXSTEP_PER_VERTEX. SG_VERTEXSTEP_PER_INSTANCE is used with
instanced-rendering.

The vertex-step is part of the vertex-layout definition
when creating pipeline objects.
*/
sg_vertex_step :: enum u32 {
    SG_VERTEXSTEP_DEFAULT      :: 0;
    SG_VERTEXSTEP_PER_VERTEX   :: 1;
    SG_VERTEXSTEP_PER_INSTANCE :: 2;
    SG_VERTEXSTEP_NUM          :: 3;
    SG_VERTEXSTEP_FORCE_U32    :: 2147483647;

    _SG_VERTEXSTEP_DEFAULT   :: SG_VERTEXSTEP_DEFAULT;

    _SG_VERTEXSTEP_NUM       :: SG_VERTEXSTEP_NUM;
    _SG_VERTEXSTEP_FORCE_U32 :: SG_VERTEXSTEP_FORCE_U32;
}

/*
sg_uniform_type

The data type of a uniform block member. This is used to
describe the internal layout of uniform blocks when creating
a shader object.
*/
sg_uniform_type :: enum u32 {
    SG_UNIFORMTYPE_INVALID   :: 0;
    SG_UNIFORMTYPE_FLOAT     :: 1;
    SG_UNIFORMTYPE_FLOAT2    :: 2;
    SG_UNIFORMTYPE_FLOAT3    :: 3;
    SG_UNIFORMTYPE_FLOAT4    :: 4;
    SG_UNIFORMTYPE_INT       :: 5;
    SG_UNIFORMTYPE_INT2      :: 6;
    SG_UNIFORMTYPE_INT3      :: 7;
    SG_UNIFORMTYPE_INT4      :: 8;
    SG_UNIFORMTYPE_MAT4      :: 9;
    SG_UNIFORMTYPE_NUM       :: 10;
    SG_UNIFORMTYPE_FORCE_U32 :: 2147483647;

    _SG_UNIFORMTYPE_NUM       :: SG_UNIFORMTYPE_NUM;
    _SG_UNIFORMTYPE_FORCE_U32 :: SG_UNIFORMTYPE_FORCE_U32;
}

/*
sg_uniform_layout

A hint for the interior memory layout of uniform blocks. This is
only really relevant for the GL backend where the internal layout
of uniform blocks must be known to sokol-gfx. For all other backends the
internal memory layout of uniform blocks doesn't matter, sokol-gfx
will just pass uniform data as a single memory blob to the
3D backend.

SG_UNIFORMLAYOUT_NATIVE (default)
Native layout means that a 'backend-native' memory layout
is used. For the GL backend this means that uniforms
are packed tightly in memory (e.g. there are no padding
bytes).

SG_UNIFORMLAYOUT_STD140
The memory layout is a subset of std140. Arrays are only
allowed for the FLOAT4, INT4 and MAT4. Alignment is as
is as follows:

FLOAT, INT:         4 byte alignment
FLOAT2, INT2:       8 byte alignment
FLOAT3, INT3:       16 byte alignment(!)
FLOAT4, INT4:       16 byte alignment
MAT4:               16 byte alignment
FLOAT4[], INT4[]:   16 byte alignment

The overall size of the uniform block must be a multiple
of 16.

For more information search for 'UNIFORM DATA LAYOUT' in the documentation block
at the start of the header.
*/
sg_uniform_layout :: enum u32 {
    SG_UNIFORMLAYOUT_DEFAULT   :: 0;
    SG_UNIFORMLAYOUT_NATIVE    :: 1;
    SG_UNIFORMLAYOUT_STD140    :: 2;
    SG_UNIFORMLAYOUT_NUM       :: 3;
    SG_UNIFORMLAYOUT_FORCE_U32 :: 2147483647;

    _SG_UNIFORMLAYOUT_DEFAULT   :: SG_UNIFORMLAYOUT_DEFAULT;

    _SG_UNIFORMLAYOUT_NUM       :: SG_UNIFORMLAYOUT_NUM;
    _SG_UNIFORMLAYOUT_FORCE_U32 :: SG_UNIFORMLAYOUT_FORCE_U32;
}

/*
sg_cull_mode

The face-culling mode, this is used in the
sg_pipeline_desc.cull_mode member when creating a
pipeline object.

The default cull mode is SG_CULLMODE_NONE
*/
sg_cull_mode :: enum u32 {
    SG_CULLMODE_DEFAULT   :: 0;
    SG_CULLMODE_NONE      :: 1;
    SG_CULLMODE_FRONT     :: 2;
    SG_CULLMODE_BACK      :: 3;
    SG_CULLMODE_NUM       :: 4;
    SG_CULLMODE_FORCE_U32 :: 2147483647;

    _SG_CULLMODE_DEFAULT   :: SG_CULLMODE_DEFAULT;

    _SG_CULLMODE_NUM       :: SG_CULLMODE_NUM;
    _SG_CULLMODE_FORCE_U32 :: SG_CULLMODE_FORCE_U32;
}

/*
sg_face_winding

The vertex-winding rule that determines a front-facing primitive. This
is used in the member sg_pipeline_desc.face_winding
when creating a pipeline object.

The default winding is SG_FACEWINDING_CW (clockwise)
*/
sg_face_winding :: enum u32 {
    SG_FACEWINDING_DEFAULT   :: 0;
    SG_FACEWINDING_CCW       :: 1;
    SG_FACEWINDING_CW        :: 2;
    SG_FACEWINDING_NUM       :: 3;
    SG_FACEWINDING_FORCE_U32 :: 2147483647;

    _SG_FACEWINDING_DEFAULT   :: SG_FACEWINDING_DEFAULT;

    _SG_FACEWINDING_NUM       :: SG_FACEWINDING_NUM;
    _SG_FACEWINDING_FORCE_U32 :: SG_FACEWINDING_FORCE_U32;
}

/*
sg_compare_func

The compare-function for configuring depth- and stencil-ref tests
in pipeline objects, and for texture samplers which perform a comparison
instead of regular sampling operation.

sg_pipeline_desc
.depth
.compare
.stencil
.front.compare
.back.compar

sg_sampler_desc
.compare

The default compare func for depth- and stencil-tests is
SG_COMPAREFUNC_ALWAYS.

The default compare func for sampler is SG_COMPAREFUNC_NEVER.
*/
sg_compare_func :: enum u32 {
    SG_COMPAREFUNC_DEFAULT       :: 0;
    SG_COMPAREFUNC_NEVER         :: 1;
    SG_COMPAREFUNC_LESS          :: 2;
    SG_COMPAREFUNC_EQUAL         :: 3;
    SG_COMPAREFUNC_LESS_EQUAL    :: 4;
    SG_COMPAREFUNC_GREATER       :: 5;
    SG_COMPAREFUNC_NOT_EQUAL     :: 6;
    SG_COMPAREFUNC_GREATER_EQUAL :: 7;
    SG_COMPAREFUNC_ALWAYS        :: 8;
    SG_COMPAREFUNC_NUM           :: 9;
    SG_COMPAREFUNC_FORCE_U32     :: 2147483647;

    _SG_COMPAREFUNC_DEFAULT   :: SG_COMPAREFUNC_DEFAULT;

    _SG_COMPAREFUNC_NUM       :: SG_COMPAREFUNC_NUM;
    _SG_COMPAREFUNC_FORCE_U32 :: SG_COMPAREFUNC_FORCE_U32;
}

/*
sg_stencil_op

The operation performed on a currently stored stencil-value when a
comparison test passes or fails. This is used when creating a pipeline
object in the members:

sg_pipeline_desc
.stencil
.front
.fail_op
.depth_fail_op
.pass_op
.back
.fail_op
.depth_fail_op
.pass_op

The default value is SG_STENCILOP_KEEP.
*/
sg_stencil_op :: enum u32 {
    SG_STENCILOP_DEFAULT    :: 0;
    SG_STENCILOP_KEEP       :: 1;
    SG_STENCILOP_ZERO       :: 2;
    SG_STENCILOP_REPLACE    :: 3;
    SG_STENCILOP_INCR_CLAMP :: 4;
    SG_STENCILOP_DECR_CLAMP :: 5;
    SG_STENCILOP_INVERT     :: 6;
    SG_STENCILOP_INCR_WRAP  :: 7;
    SG_STENCILOP_DECR_WRAP  :: 8;
    SG_STENCILOP_NUM        :: 9;
    SG_STENCILOP_FORCE_U32  :: 2147483647;

    _SG_STENCILOP_DEFAULT   :: SG_STENCILOP_DEFAULT;

    _SG_STENCILOP_NUM       :: SG_STENCILOP_NUM;
    _SG_STENCILOP_FORCE_U32 :: SG_STENCILOP_FORCE_U32;
}

/*
sg_blend_factor

The source and destination factors in blending operations.
This is used in the following members when creating a pipeline object:

sg_pipeline_desc
.colors[i]
.blend
.src_factor_rgb
.dst_factor_rgb
.src_factor_alpha
.dst_factor_alpha

The default value is SG_BLENDFACTOR_ONE for source
factors, and SG_BLENDFACTOR_ZERO for destination factors.
*/
sg_blend_factor :: enum u32 {
    SG_BLENDFACTOR_DEFAULT               :: 0;
    SG_BLENDFACTOR_ZERO                  :: 1;
    SG_BLENDFACTOR_ONE                   :: 2;
    SG_BLENDFACTOR_SRC_COLOR             :: 3;
    SG_BLENDFACTOR_ONE_MINUS_SRC_COLOR   :: 4;
    SG_BLENDFACTOR_SRC_ALPHA             :: 5;
    SG_BLENDFACTOR_ONE_MINUS_SRC_ALPHA   :: 6;
    SG_BLENDFACTOR_DST_COLOR             :: 7;
    SG_BLENDFACTOR_ONE_MINUS_DST_COLOR   :: 8;
    SG_BLENDFACTOR_DST_ALPHA             :: 9;
    SG_BLENDFACTOR_ONE_MINUS_DST_ALPHA   :: 10;
    SG_BLENDFACTOR_SRC_ALPHA_SATURATED   :: 11;
    SG_BLENDFACTOR_BLEND_COLOR           :: 12;
    SG_BLENDFACTOR_ONE_MINUS_BLEND_COLOR :: 13;
    SG_BLENDFACTOR_BLEND_ALPHA           :: 14;
    SG_BLENDFACTOR_ONE_MINUS_BLEND_ALPHA :: 15;
    SG_BLENDFACTOR_NUM                   :: 16;
    SG_BLENDFACTOR_FORCE_U32             :: 2147483647;

    _SG_BLENDFACTOR_DEFAULT   :: SG_BLENDFACTOR_DEFAULT;

    _SG_BLENDFACTOR_NUM       :: SG_BLENDFACTOR_NUM;
    _SG_BLENDFACTOR_FORCE_U32 :: SG_BLENDFACTOR_FORCE_U32;
}

/*
sg_blend_op

Describes how the source and destination values are combined in the
fragment blending operation. It is used in the following members when
creating a pipeline object:

sg_pipeline_desc
.colors[i]
.blend
.op_rgb
.op_alpha

The default value is SG_BLENDOP_ADD.
*/
sg_blend_op :: enum u32 {
    SG_BLENDOP_DEFAULT          :: 0;
    SG_BLENDOP_ADD              :: 1;
    SG_BLENDOP_SUBTRACT         :: 2;
    SG_BLENDOP_REVERSE_SUBTRACT :: 3;
    SG_BLENDOP_NUM              :: 4;
    SG_BLENDOP_FORCE_U32        :: 2147483647;

    _SG_BLENDOP_DEFAULT   :: SG_BLENDOP_DEFAULT;

    _SG_BLENDOP_NUM       :: SG_BLENDOP_NUM;
    _SG_BLENDOP_FORCE_U32 :: SG_BLENDOP_FORCE_U32;
}

/*
sg_color_mask

Selects the active color channels when writing a fragment color to the
framebuffer. This is used in the members
sg_pipeline_desc.colors[i].write_mask when creating a pipeline object.

The default colormask is SG_COLORMASK_RGBA (write all colors channels)

NOTE: since the color mask value 0 is reserved for the default value
(SG_COLORMASK_RGBA), use SG_COLORMASK_NONE if all color channels
should be disabled.
*/
sg_color_mask :: enum u32 {
    SG_COLORMASK_DEFAULT   :: 0;
    SG_COLORMASK_NONE      :: 16;
    SG_COLORMASK_R         :: 1;
    SG_COLORMASK_G         :: 2;
    SG_COLORMASK_RG        :: 3;
    SG_COLORMASK_B         :: 4;
    SG_COLORMASK_RB        :: 5;
    SG_COLORMASK_GB        :: 6;
    SG_COLORMASK_RGB       :: 7;
    SG_COLORMASK_A         :: 8;
    SG_COLORMASK_RA        :: 9;
    SG_COLORMASK_GA        :: 10;
    SG_COLORMASK_RGA       :: 11;
    SG_COLORMASK_BA        :: 12;
    SG_COLORMASK_RBA       :: 13;
    SG_COLORMASK_GBA       :: 14;
    SG_COLORMASK_RGBA      :: 15;
    SG_COLORMASK_FORCE_U32 :: 2147483647;

    _SG_COLORMASK_DEFAULT   :: SG_COLORMASK_DEFAULT;

    _SG_COLORMASK_FORCE_U32 :: SG_COLORMASK_FORCE_U32;
}

/*
sg_load_action

Defines the load action that should be performed at the start of a render pass:

SG_LOADACTION_CLEAR:        clear the render target
SG_LOADACTION_LOAD:         load the previous content of the render target
SG_LOADACTION_DONTCARE:     leave the render target in an undefined state

This is used in the sg_pass_action structure.

The default load action for all pass attachments is SG_LOADACTION_CLEAR,
with the values rgba = { 0.5f, 0.5f, 0.5f, 1.0f }, depth=1.0f and stencil=0.

If you want to override the default behaviour, it is important to not
only set the clear color, but the 'action' field as well (as long as this
is _SG_LOADACTION_DEFAULT, the value fields will be ignored).
*/
sg_load_action :: enum u32 {
    SG_LOADACTION_DEFAULT   :: 0;
    SG_LOADACTION_CLEAR     :: 1;
    SG_LOADACTION_LOAD      :: 2;
    SG_LOADACTION_DONTCARE  :: 3;
    SG_LOADACTION_FORCE_U32 :: 2147483647;

    _SG_LOADACTION_DEFAULT   :: SG_LOADACTION_DEFAULT;

    _SG_LOADACTION_FORCE_U32 :: SG_LOADACTION_FORCE_U32;
}

/*
sg_store_action

Defines the store action that be performed at the end of a render pass:

SG_STOREACTION_STORE:       store the rendered content to the color attachment image
SG_STOREACTION_DONTCARE:    allows the GPU to discard the rendered content
*/
sg_store_action :: enum u32 {
    SG_STOREACTION_DEFAULT   :: 0;
    SG_STOREACTION_STORE     :: 1;
    SG_STOREACTION_DONTCARE  :: 2;
    SG_STOREACTION_FORCE_U32 :: 2147483647;

    _SG_STOREACTION_DEFAULT   :: SG_STOREACTION_DEFAULT;

    _SG_STOREACTION_FORCE_U32 :: SG_STOREACTION_FORCE_U32;
}

/*
sg_pass_action

The sg_pass_action struct defines the actions to be performed
at the start and end of a render pass.

- at the start of the pass: whether the render targets should be cleared,
loaded with their previous content, or start in an undefined state
- for clear operations: the clear value (color, depth, or stencil values)
- at the end of the pass: whether the rendering result should be
stored back into the render target or discarded
*/
sg_color_attachment_action :: struct {
    load_action:  sg_load_action; // default: SG_LOADACTION_CLEAR
    store_action: sg_store_action; // default: SG_STOREACTION_STORE
    clear_value:  sg_color; // default: { 0.5f, 0.5f, 0.5f, 1.0f }
}

sg_depth_attachment_action :: struct {
    load_action:  sg_load_action; // default: SG_LOADACTION_CLEAR
    store_action: sg_store_action; // default: SG_STOREACTION_DONTCARE
    clear_value:  float; // default: 1.0
}

sg_stencil_attachment_action :: struct {
    load_action:  sg_load_action; // default: SG_LOADACTION_CLEAR
    store_action: sg_store_action; // default: SG_STOREACTION_DONTCARE
    clear_value:  u8; // default: 0
}

sg_pass_action :: struct {
    colors:  [4] sg_color_attachment_action;
    depth:   sg_depth_attachment_action;
    stencil: sg_stencil_attachment_action;
}

/*
sg_swapchain

Used in sg_begin_pass() to provide details about an external swapchain
(pixel formats, sample count and backend-API specific render surface objects).

The following information must be provided:

- the width and height of the swapchain surfaces in number of pixels,
- the pixel format of the render- and optional msaa-resolve-surface
- the pixel format of the optional depth- or depth-stencil-surface
- the MSAA sample count for the render and depth-stencil surface

If the pixel formats and MSAA sample counts are left zero-initialized,
their defaults are taken from the sg_environment struct provided in the
sg_setup() call.

The width and height *must* be > 0.

Additionally the following backend API specific objects must be passed in
as 'type erased' void pointers:

GL: on all GL backends, a GL framebuffer object must be provided. This
can be zero for the default framebuffer.

D3D11:
- an ID3D11RenderTargetView for the rendering surface, without
MSAA rendering this surface will also be displayed
- an optional ID3D11DepthStencilView for the depth- or depth/stencil
buffer surface
- when MSAA rendering is used, another ID3D11RenderTargetView
which serves as MSAA resolve target and will be displayed

WebGPU (same as D3D11, except different types)
- a WGPUTextureView for the rendering surface, without
MSAA rendering this surface will also be displayed
- an optional WGPUTextureView for the depth- or depth/stencil
buffer surface
- when MSAA rendering is used, another WGPUTextureView
which serves as MSAA resolve target and will be displayed

Metal (NOTE that the rolves of provided surfaces is slightly different
than on D3D11 or WebGPU in case of MSAA vs non-MSAA rendering):

- A current CAMetalDrawable (NOT an MTLDrawable!) which will be presented.
This will either be rendered to directly (if no MSAA is used), or serve
as MSAA-resolve target.
- an optional MTLTexture for the depth- or depth-stencil buffer
- an optional multisampled MTLTexture which serves as intermediate
rendering surface which will then be resolved into the
CAMetalDrawable.

NOTE that for Metal you must use an ObjC __bridge cast to
properly tunnel the ObjC object handle through a C void*, e.g.:

swapchain.metal.current_drawable = (__bridge const void*) [mtkView currentDrawable];

On all other backends you shouldn't need to mess with the reference count.

It's a good practice to write a helper function which returns an initialized
sg_swapchain structs, which can then be plugged directly into
sg_pass.swapchain. Look at the function sglue_swapchain() in the sokol_glue.h
as an example.
*/
sg_metal_swapchain :: struct {
    current_drawable:      *void; // CAMetalDrawable (NOT MTLDrawable!!!)
    depth_stencil_texture: *void; // MTLTexture
    msaa_color_texture:    *void; // MTLTexture
}

sg_d3d11_swapchain :: struct {
    render_view:        *void; // ID3D11RenderTargetView
    resolve_view:       *void; // ID3D11RenderTargetView
    depth_stencil_view: *void; // ID3D11DepthStencilView
}

sg_wgpu_swapchain :: struct {
    render_view:        *void; // WGPUTextureView
    resolve_view:       *void; // WGPUTextureView
    depth_stencil_view: *void; // WGPUTextureView
}

sg_gl_swapchain :: struct {
    framebuffer: u32; // GL framebuffer object
}

sg_swapchain :: struct {
    width:        s32;
    height:       s32;
    sample_count: s32;
    color_format: sg_pixel_format;
    depth_format: sg_pixel_format;
    metal:        sg_metal_swapchain;
    d3d11:        sg_d3d11_swapchain;
    wgpu:         sg_wgpu_swapchain;
    gl:           sg_gl_swapchain;
}

/*
sg_pass

The sg_pass structure is passed as argument into the sg_begin_pass()
function.

For an offscreen rendering pass, an sg_pass_action struct and sg_attachments
object must be provided, and for swapchain passes, and sg_pass_action and
an sg_swapchain struct. It is an error to provide both an sg_attachments
handle and an initialized sg_swapchain struct in the same sg_begin_pass().

An sg_begin_pass() call for an offscreen pass would look like this (where
`attachments` is an sg_attachments handle):

sg_begin_pass(&(sg_pass){
.action = { ... },
.attachments = attachments,
});

...and a swapchain render pass would look like this (using the sokol_glue.h
helper function sglue_swapchain() which gets the swapchain properties from
sokol_app.h):

sg_begin_pass(&(sg_pass){
.action = { ... },
.swapchain = sglue_swapchain(),
});

You can also omit the .action object to get default pass action behaviour
(clear to color=grey, depth=1 and stencil=0).
*/
sg_pass :: struct {
    _start_canary: u32;
    action:        sg_pass_action;
    attachments:   sg_attachments;
    swapchain:     sg_swapchain;
    label:         *u8;
    _end_canary:   u32;
}

/*
sg_bindings

The sg_bindings structure defines the resource binding slots
of the sokol_gfx render pipeline, used as argument to the
sg_apply_bindings() function.

A resource binding struct contains:

- 1..N vertex buffers
- 0..N vertex buffer offsets
- 0..1 index buffers
- 0..1 index buffer offsets
- 0..N vertex shader stage images
- 0..N vertex shader stage samplers
- 0..N vertex shader storage buffers
- 0..N fragment shader stage images
- 0..N fragment shader stage samplers
- 0..N fragment shader storage buffers

For the max number of bindings, see the constant definitions:

- SG_MAX_VERTEX_BUFFERS
- SG_MAX_SHADERSTAGE_IMAGES
- SG_MAX_SHADERSTAGE_SAMPLERS
- SG_MAX_SHADERSTAGE_STORAGEBUFFERS

The optional buffer offsets can be used to put different unrelated
chunks of vertex- and/or index-data into the same buffer objects.
*/
sg_stage_bindings :: struct {
    images:          [12] sg_image;
    samplers:        [8] sg_sampler;
    storage_buffers: [8] sg_buffer;
}

sg_bindings :: struct {
    _start_canary:         u32;
    vertex_buffers:        [8] sg_buffer;
    vertex_buffer_offsets: [8] s32;
    index_buffer:          sg_buffer;
    index_buffer_offset:   s32;
    vs:                    sg_stage_bindings;
    fs:                    sg_stage_bindings;
    _end_canary:           u32;
}

/*
sg_buffer_desc

Creation parameters for sg_buffer objects, used in the
sg_make_buffer() call.

The default configuration is:

.size:      0       (*must* be >0 for buffers without data)
.type:      SG_BUFFERTYPE_VERTEXBUFFER
.usage:     SG_USAGE_IMMUTABLE
.data.ptr   0       (*must* be valid for immutable buffers)
.data.size  0       (*must* be > 0 for immutable buffers)
.label      0       (optional string label)

For immutable buffers which are initialized with initial data,
keep the .size item zero-initialized, and set the size together with the
pointer to the initial data in the .data item.

For mutable buffers without initial data, keep the .data item
zero-initialized, and set the buffer size in the .size item instead.

You can also set both size values, but currently both size values must
be identical (this may change in the future when the dynamic resource
management may become more flexible).

ADVANCED TOPIC: Injecting native 3D-API buffers:

The following struct members allow to inject your own GL, Metal
or D3D11 buffers into sokol_gfx:

.gl_buffers[SG_NUM_INFLIGHT_FRAMES]
.mtl_buffers[SG_NUM_INFLIGHT_FRAMES]
.d3d11_buffer

You must still provide all other struct items except the .data item, and
these must match the creation parameters of the native buffers you
provide. For SG_USAGE_IMMUTABLE, only provide a single native 3D-API
buffer, otherwise you need to provide SG_NUM_INFLIGHT_FRAMES buffers
(only for GL and Metal, not D3D11). Providing multiple buffers for GL and
Metal is necessary because sokol_gfx will rotate through them when
calling sg_update_buffer() to prevent lock-stalls.

Note that it is expected that immutable injected buffer have already been
initialized with content, and the .content member must be 0!

Also you need to call sg_reset_state_cache() after calling native 3D-API
functions, and before calling any sokol_gfx function.
*/
sg_buffer_desc :: struct {
    _start_canary: u32;
    size:          u64;
    type:          sg_buffer_type;
    usage:         sg_usage;
    data:          sg_range;
    label:         *u8;

    // optionally inject backend-specific resources
    gl_buffers:    [2] u32;
    mtl_buffers:   [2] *void;
    d3d11_buffer:  *void;
    wgpu_buffer:   *void;
    _end_canary:   u32;
}

/*
sg_image_data

Defines the content of an image through a 2D array of sg_range structs.
The first array dimension is the cubemap face, and the second array
dimension the mipmap level.
*/
sg_image_data :: struct {
    subimage: [6] [16] sg_range;
}

/*
sg_image_desc

Creation parameters for sg_image objects, used in the sg_make_image() call.

The default configuration is:

.type:              SG_IMAGETYPE_2D
.render_target:     false
.width              0 (must be set to >0)
.height             0 (must be set to >0)
.num_slices         1 (3D textures: depth; array textures: number of layers)
.num_mipmaps:       1
.usage:             SG_USAGE_IMMUTABLE
.pixel_format:      SG_PIXELFORMAT_RGBA8 for textures, or sg_desc.environment.defaults.color_format for render targets
.sample_count:      1 for textures, or sg_desc.environment.defaults.sample_count for render targets
.data               an sg_image_data struct to define the initial content
.label              0 (optional string label for trace hooks)

Q: Why is the default sample_count for render targets identical with the
"default sample count" from sg_desc.environment.defaults.sample_count?

A: So that it matches the default sample count in pipeline objects. Even
though it is a bit strange/confusing that offscreen render targets by default
get the same sample count as 'default swapchains', but it's better that
an offscreen render target created with default parameters matches
a pipeline object created with default parameters.

NOTE:

Images with usage SG_USAGE_IMMUTABLE must be fully initialized by
providing a valid .data member which points to initialization data.

ADVANCED TOPIC: Injecting native 3D-API textures:

The following struct members allow to inject your own GL, Metal or D3D11
textures into sokol_gfx:

.gl_textures[SG_NUM_INFLIGHT_FRAMES]
.mtl_textures[SG_NUM_INFLIGHT_FRAMES]
.d3d11_texture
.d3d11_shader_resource_view
.wgpu_texture
.wgpu_texture_view

For GL, you can also specify the texture target or leave it empty to use
the default texture target for the image type (GL_TEXTURE_2D for
SG_IMAGETYPE_2D etc)

For D3D11 and WebGPU, either only provide a texture, or both a texture and
shader-resource-view / texture-view object. If you want to use access the
injected texture in a shader you *must* provide a shader-resource-view.

The same rules apply as for injecting native buffers (see sg_buffer_desc
documentation for more details).
*/
sg_image_desc :: struct {
    _start_canary:              u32;
    type:                       sg_image_type;
    render_target:              bool;
    width:                      s32;
    height:                     s32;
    num_slices:                 s32;
    num_mipmaps:                s32;
    usage:                      sg_usage;
    pixel_format:               sg_pixel_format;
    sample_count:               s32;
    data:                       sg_image_data;
    label:                      *u8;

    // optionally inject backend-specific resources
    gl_textures:                [2] u32;
    gl_texture_target:          u32;
    mtl_textures:               [2] *void;
    d3d11_texture:              *void;
    d3d11_shader_resource_view: *void;
    wgpu_texture:               *void;
    wgpu_texture_view:          *void;
    _end_canary:                u32;
}

/*
sg_sampler_desc

Creation parameters for sg_sampler objects, used in the sg_make_sampler() call

.min_filter:        SG_FILTER_NEAREST
.mag_filter:        SG_FILTER_NEAREST
.mipmap_filter      SG_FILTER_NONE
.wrap_u:            SG_WRAP_REPEAT
.wrap_v:            SG_WRAP_REPEAT
.wrap_w:            SG_WRAP_REPEAT (only SG_IMAGETYPE_3D)
.min_lod            0.0f
.max_lod            FLT_MAX
.border_color       SG_BORDERCOLOR_OPAQUE_BLACK
.compare            SG_COMPAREFUNC_NEVER
.max_anisotropy     1 (must be 1..16)

*/
sg_sampler_desc :: struct {
    _start_canary:  u32;
    min_filter:     sg_filter;
    mag_filter:     sg_filter;
    mipmap_filter:  sg_filter;
    wrap_u:         sg_wrap;
    wrap_v:         sg_wrap;
    wrap_w:         sg_wrap;
    min_lod:        float;
    max_lod:        float;
    border_color:   sg_border_color;
    compare:        sg_compare_func;
    max_anisotropy: u32;
    label:          *u8;

    // optionally inject backend-specific resources
    gl_sampler:     u32;
    mtl_sampler:    *void;
    d3d11_sampler:  *void;
    wgpu_sampler:   *void;
    _end_canary:    u32;
}

/*
sg_shader_desc

The structure sg_shader_desc defines all creation parameters for shader
programs, used as input to the sg_make_shader() function:

- reflection information for vertex attributes (vertex shader inputs):
- vertex attribute name (only optionally used by GLES3 and GL)
- a semantic name and index (required for D3D11)
- for each shader-stage (vertex and fragment):
- the shader source or bytecode
- an optional entry function name
- an optional compile target (only for D3D11 when source is provided,
defaults are "vs_4_0" and "ps_4_0")
- reflection info for each uniform block used by the shader stage:
- the size of the uniform block in bytes
- a memory layout hint (native vs std140, only required for GL backends)
- reflection info for each uniform block member (only required for GL backends):
- member name
- member type (SG_UNIFORMTYPE_xxx)
- if the member is an array, the number of array items
- reflection info for textures used in the shader stage:
- the image type (SG_IMAGETYPE_xxx)
- the image-sample type (SG_IMAGESAMPLETYPE_xxx, default is SG_IMAGESAMPLETYPE_FLOAT)
- whether the shader expects a multisampled texture
- reflection info for samplers used in the shader stage:
- the sampler type (SG_SAMPLERTYPE_xxx)
- reflection info for each image-sampler-pair used by the shader:
- the texture slot of the involved texture
- the sampler slot of the involved sampler
- for GLSL only: the name of the combined image-sampler object
- reflection info for each storage-buffer used by the shader:
- whether the storage buffer is readonly (currently this
must be true)

For all GL backends, shader source-code must be provided. For D3D11 and Metal,
either shader source-code or byte-code can be provided.

For D3D11, if source code is provided, the d3dcompiler_47.dll will be loaded
on demand. If this fails, shader creation will fail. When compiling HLSL
source code, you can provide an optional target string via
sg_shader_stage_desc.d3d11_target, the default target is "vs_4_0" for the
vertex shader stage and "ps_4_0" for the pixel shader stage.
*/
sg_shader_attr_desc :: struct {
    name:      *u8; // GLSL vertex attribute name (optional)
    sem_name:  *u8; // HLSL semantic name
    sem_index: s32; // HLSL semantic index
}

sg_shader_uniform_desc :: struct {
    name:        *u8;
    type:        sg_uniform_type;
    array_count: s32;
}

sg_shader_uniform_block_desc :: struct {
    size:     u64;
    layout:   sg_uniform_layout;
    uniforms: [16] sg_shader_uniform_desc;
}

sg_shader_storage_buffer_desc :: struct {
    used:     bool;
    readonly: bool;
}

sg_shader_image_desc :: struct {
    used:         bool;
    multisampled: bool;
    image_type:   sg_image_type;
    sample_type:  sg_image_sample_type;
}

sg_shader_sampler_desc :: struct {
    used:         bool;
    sampler_type: sg_sampler_type;
}

sg_shader_image_sampler_pair_desc :: struct {
    used:         bool;
    image_slot:   s32;
    sampler_slot: s32;
    glsl_name:    *u8;
}

sg_shader_stage_desc :: struct {
    source:              *u8;
    bytecode:            sg_range;
    entry:               *u8;
    d3d11_target:        *u8;
    uniform_blocks:      [4] sg_shader_uniform_block_desc;
    storage_buffers:     [8] sg_shader_storage_buffer_desc;
    images:              [12] sg_shader_image_desc;
    samplers:            [8] sg_shader_sampler_desc;
    image_sampler_pairs: [12] sg_shader_image_sampler_pair_desc;
}

sg_shader_desc :: struct {
    _start_canary: u32;
    attrs:         [16] sg_shader_attr_desc;
    vs:            sg_shader_stage_desc;
    fs:            sg_shader_stage_desc;
    label:         *u8;
    _end_canary:   u32;
}

/*
sg_pipeline_desc

The sg_pipeline_desc struct defines all creation parameters for an
sg_pipeline object, used as argument to the sg_make_pipeline() function:

- the vertex layout for all input vertex buffers
- a shader object
- the 3D primitive type (points, lines, triangles, ...)
- the index type (none, 16- or 32-bit)
- all the fixed-function-pipeline state (depth-, stencil-, blend-state, etc...)

If the vertex data has no gaps between vertex components, you can omit
the .layout.buffers[].stride and layout.attrs[].offset items (leave them
default-initialized to 0), sokol-gfx will then compute the offsets and
strides from the vertex component formats (.layout.attrs[].format).
Please note that ALL vertex attribute offsets must be 0 in order for the
automatic offset computation to kick in.

The default configuration is as follows:

.shader:            0 (must be initialized with a valid sg_shader id!)
.layout:
.buffers[]:         vertex buffer layouts
.stride:        0 (if no stride is given it will be computed)
.step_func      SG_VERTEXSTEP_PER_VERTEX
.step_rate      1
.attrs[]:           vertex attribute declarations
.buffer_index   0 the vertex buffer bind slot
.offset         0 (offsets can be omitted if the vertex layout has no gaps)
.format         SG_VERTEXFORMAT_INVALID (must be initialized!)
.depth:
.pixel_format:      sg_desc.context.depth_format
.compare:           SG_COMPAREFUNC_ALWAYS
.write_enabled:     false
.bias:              0.0f
.bias_slope_scale:  0.0f
.bias_clamp:        0.0f
.stencil:
.enabled:           false
.front/back:
.compare:       SG_COMPAREFUNC_ALWAYS
.fail_op:       SG_STENCILOP_KEEP
.depth_fail_op: SG_STENCILOP_KEEP
.pass_op:       SG_STENCILOP_KEEP
.read_mask:         0
.write_mask:        0
.ref:               0
.color_count            1
.colors[0..color_count]
.pixel_format       sg_desc.context.color_format
.write_mask:        SG_COLORMASK_RGBA
.blend:
.enabled:           false
.src_factor_rgb:    SG_BLENDFACTOR_ONE
.dst_factor_rgb:    SG_BLENDFACTOR_ZERO
.op_rgb:            SG_BLENDOP_ADD
.src_factor_alpha:  SG_BLENDFACTOR_ONE
.dst_factor_alpha:  SG_BLENDFACTOR_ZERO
.op_alpha:          SG_BLENDOP_ADD
.primitive_type:            SG_PRIMITIVETYPE_TRIANGLES
.index_type:                SG_INDEXTYPE_NONE
.cull_mode:                 SG_CULLMODE_NONE
.face_winding:              SG_FACEWINDING_CW
.sample_count:              sg_desc.context.sample_count
.blend_color:               (sg_color) { 0.0f, 0.0f, 0.0f, 0.0f }
.alpha_to_coverage_enabled: false
.label  0       (optional string label for trace hooks)
*/
sg_vertex_buffer_layout_state :: struct {
    stride:    s32;
    step_func: sg_vertex_step;
    step_rate: s32;
}

sg_vertex_attr_state :: struct {
    buffer_index: s32;
    offset:       s32;
    format:       sg_vertex_format;
}

sg_vertex_layout_state :: struct {
    buffers: [8] sg_vertex_buffer_layout_state;
    attrs:   [16] sg_vertex_attr_state;
}

sg_stencil_face_state :: struct {
    compare:       sg_compare_func;
    fail_op:       sg_stencil_op;
    depth_fail_op: sg_stencil_op;
    pass_op:       sg_stencil_op;
}

sg_stencil_state :: struct {
    enabled:    bool;
    front:      sg_stencil_face_state;
    back:       sg_stencil_face_state;
    read_mask:  u8;
    write_mask: u8;
    ref:        u8;
}

sg_depth_state :: struct {
    pixel_format:     sg_pixel_format;
    compare:          sg_compare_func;
    write_enabled:    bool;
    bias:             float;
    bias_slope_scale: float;
    bias_clamp:       float;
}

sg_blend_state :: struct {
    enabled:          bool;
    src_factor_rgb:   sg_blend_factor;
    dst_factor_rgb:   sg_blend_factor;
    op_rgb:           sg_blend_op;
    src_factor_alpha: sg_blend_factor;
    dst_factor_alpha: sg_blend_factor;
    op_alpha:         sg_blend_op;
}

sg_color_target_state :: struct {
    pixel_format: sg_pixel_format;
    write_mask:   sg_color_mask;
    blend:        sg_blend_state;
}

sg_pipeline_desc :: struct {
    _start_canary:             u32;
    shader:                    sg_shader;
    layout:                    sg_vertex_layout_state;
    depth:                     sg_depth_state;
    stencil:                   sg_stencil_state;
    color_count:               s32;
    colors:                    [4] sg_color_target_state;
    primitive_type:            sg_primitive_type;
    index_type:                sg_index_type;
    cull_mode:                 sg_cull_mode;
    face_winding:              sg_face_winding;
    sample_count:              s32;
    blend_color:               sg_color;
    alpha_to_coverage_enabled: bool;
    label:                     *u8;
    _end_canary:               u32;
}

/*
sg_attachments_desc

Creation parameters for an sg_attachments object, used as argument to the
sg_make_attachments() function.

An attachments object bundles 0..4 color attachments, 0..4 msaa-resolve
attachments, and none or one depth-stencil attachmente for use
in a render pass. At least one color attachment or one depth-stencil
attachment must be provided (no color attachment and a depth-stencil
attachment is useful for a depth-only render pass).

Each attachment definition consists of an image object, and two additional indices
describing which subimage the pass will render into: one mipmap index, and if the image
is a cubemap, array-texture or 3D-texture, the face-index, array-layer or
depth-slice.

All attachments must have the same width and height.

All color attachments and the depth-stencil attachment must have the
same sample count.

If a resolve attachment is set, an MSAA-resolve operation from the
associated color attachment image into the resolve attachment image will take
place in the sg_end_pass() function. In this case, the color attachment
must have a (sample_count>1), and the resolve attachment a
(sample_count==1). The resolve attachment also must have the same pixel
format as the color attachment.

NOTE that MSAA depth-stencil attachments cannot be msaa-resolved!
*/
sg_attachment_desc :: struct {
    image:     sg_image;
    mip_level: s32;
    slice:     s32; // cube texture: face; array texture: layer; 3D texture: slice
}

sg_attachments_desc :: struct {
    _start_canary: u32;
    colors:        [4] sg_attachment_desc;
    resolves:      [4] sg_attachment_desc;
    depth_stencil: sg_attachment_desc;
    label:         *u8;
    _end_canary:   u32;
}

/*
sg_trace_hooks

Installable callback functions to keep track of the sokol-gfx calls,
this is useful for debugging, or keeping track of resource creation
and destruction.

Trace hooks are installed with sg_install_trace_hooks(), this returns
another sg_trace_hooks struct with the previous set of
trace hook function pointers. These should be invoked by the
new trace hooks to form a proper call chain.
*/
sg_trace_hooks :: struct {
    user_data:           *void;
    reset_state_cache:   #type (user_data: *void) -> void #c_call;
    make_buffer:         #type (desc: *sg_buffer_desc, result: sg_buffer, user_data: *void) -> void #c_call;
    make_image:          #type (desc: *sg_image_desc, result: sg_image, user_data: *void) -> void #c_call;
    make_sampler:        #type (desc: *sg_sampler_desc, result: sg_sampler, user_data: *void) -> void #c_call;
    make_shader:         #type (desc: *sg_shader_desc, result: sg_shader, user_data: *void) -> void #c_call;
    make_pipeline:       #type (desc: *sg_pipeline_desc, result: sg_pipeline, user_data: *void) -> void #c_call;
    make_attachments:    #type (desc: *sg_attachments_desc, result: sg_attachments, user_data: *void) -> void #c_call;
    destroy_buffer:      #type (buf: sg_buffer, user_data: *void) -> void #c_call;
    destroy_image:       #type (img: sg_image, user_data: *void) -> void #c_call;
    destroy_sampler:     #type (smp: sg_sampler, user_data: *void) -> void #c_call;
    destroy_shader:      #type (shd: sg_shader, user_data: *void) -> void #c_call;
    destroy_pipeline:    #type (pip: sg_pipeline, user_data: *void) -> void #c_call;
    destroy_attachments: #type (atts: sg_attachments, user_data: *void) -> void #c_call;
    update_buffer:       #type (buf: sg_buffer, data: *sg_range, user_data: *void) -> void #c_call;
    update_image:        #type (img: sg_image, data: *sg_image_data, user_data: *void) -> void #c_call;
    append_buffer:       #type (buf: sg_buffer, data: *sg_range, result: s32, user_data: *void) -> void #c_call;
    begin_pass:          #type (pass: *sg_pass, user_data: *void) -> void #c_call;
    apply_viewport:      #type (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool, user_data: *void) -> void #c_call;
    apply_scissor_rect:  #type (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool, user_data: *void) -> void #c_call;
    apply_pipeline:      #type (pip: sg_pipeline, user_data: *void) -> void #c_call;
    apply_bindings:      #type (bindings: *sg_bindings, user_data: *void) -> void #c_call;
    apply_uniforms:      #type (stage: sg_shader_stage, ub_index: s32, data: *sg_range, user_data: *void) -> void #c_call;
    draw:                #type (base_element: s32, num_elements: s32, num_instances: s32, user_data: *void) -> void #c_call;
    end_pass:            #type (user_data: *void) -> void #c_call;
    commit:              #type (user_data: *void) -> void #c_call;
    alloc_buffer:        #type (result: sg_buffer, user_data: *void) -> void #c_call;
    alloc_image:         #type (result: sg_image, user_data: *void) -> void #c_call;
    alloc_sampler:       #type (result: sg_sampler, user_data: *void) -> void #c_call;
    alloc_shader:        #type (result: sg_shader, user_data: *void) -> void #c_call;
    alloc_pipeline:      #type (result: sg_pipeline, user_data: *void) -> void #c_call;
    alloc_attachments:   #type (result: sg_attachments, user_data: *void) -> void #c_call;
    dealloc_buffer:      #type (buf_id: sg_buffer, user_data: *void) -> void #c_call;
    dealloc_image:       #type (img_id: sg_image, user_data: *void) -> void #c_call;
    dealloc_sampler:     #type (smp_id: sg_sampler, user_data: *void) -> void #c_call;
    dealloc_shader:      #type (shd_id: sg_shader, user_data: *void) -> void #c_call;
    dealloc_pipeline:    #type (pip_id: sg_pipeline, user_data: *void) -> void #c_call;
    dealloc_attachments: #type (atts_id: sg_attachments, user_data: *void) -> void #c_call;
    init_buffer:         #type (buf_id: sg_buffer, desc: *sg_buffer_desc, user_data: *void) -> void #c_call;
    init_image:          #type (img_id: sg_image, desc: *sg_image_desc, user_data: *void) -> void #c_call;
    init_sampler:        #type (smp_id: sg_sampler, desc: *sg_sampler_desc, user_data: *void) -> void #c_call;
    init_shader:         #type (shd_id: sg_shader, desc: *sg_shader_desc, user_data: *void) -> void #c_call;
    init_pipeline:       #type (pip_id: sg_pipeline, desc: *sg_pipeline_desc, user_data: *void) -> void #c_call;
    init_attachments:    #type (atts_id: sg_attachments, desc: *sg_attachments_desc, user_data: *void) -> void #c_call;
    uninit_buffer:       #type (buf_id: sg_buffer, user_data: *void) -> void #c_call;
    uninit_image:        #type (img_id: sg_image, user_data: *void) -> void #c_call;
    uninit_sampler:      #type (smp_id: sg_sampler, user_data: *void) -> void #c_call;
    uninit_shader:       #type (shd_id: sg_shader, user_data: *void) -> void #c_call;
    uninit_pipeline:     #type (pip_id: sg_pipeline, user_data: *void) -> void #c_call;
    uninit_attachments:  #type (atts_id: sg_attachments, user_data: *void) -> void #c_call;
    fail_buffer:         #type (buf_id: sg_buffer, user_data: *void) -> void #c_call;
    fail_image:          #type (img_id: sg_image, user_data: *void) -> void #c_call;
    fail_sampler:        #type (smp_id: sg_sampler, user_data: *void) -> void #c_call;
    fail_shader:         #type (shd_id: sg_shader, user_data: *void) -> void #c_call;
    fail_pipeline:       #type (pip_id: sg_pipeline, user_data: *void) -> void #c_call;
    fail_attachments:    #type (atts_id: sg_attachments, user_data: *void) -> void #c_call;
    push_debug_group:    #type (name: *u8, user_data: *void) -> void #c_call;
    pop_debug_group:     #type (user_data: *void) -> void #c_call;
}

/*
sg_buffer_info
sg_image_info
sg_sampler_info
sg_shader_info
sg_pipeline_info
sg_attachments_info

These structs contain various internal resource attributes which
might be useful for debug-inspection. Please don't rely on the
actual content of those structs too much, as they are quite closely
tied to sokol_gfx.h internals and may change more frequently than
the other public API elements.

The *_info structs are used as the return values of the following functions:

sg_query_buffer_info()
sg_query_image_info()
sg_query_sampler_info()
sg_query_shader_info()
sg_query_pipeline_info()
sg_query_pass_info()
*/
sg_slot_info :: struct {
    state:  sg_resource_state; // the current state of this resource slot
    res_id: u32; // type-neutral resource if (e.g. sg_buffer.id)
}

sg_buffer_info :: struct {
    slot:               sg_slot_info; // resource pool slot info
    update_frame_index: u32; // frame index of last sg_update_buffer()
    append_frame_index: u32; // frame index of last sg_append_buffer()
    append_pos:         s32; // current position in buffer for sg_append_buffer()
    append_overflow:    bool; // is buffer in overflow state (due to sg_append_buffer)
    num_slots:          s32; // number of renaming-slots for dynamically updated buffers
    active_slot:        s32; // currently active write-slot for dynamically updated buffers
}

sg_image_info :: struct {
    slot:            sg_slot_info; // resource pool slot info
    upd_frame_index: u32; // frame index of last sg_update_image()
    num_slots:       s32; // number of renaming-slots for dynamically updated images
    active_slot:     s32; // currently active write-slot for dynamically updated images
}

sg_sampler_info :: struct {
    slot: sg_slot_info; // resource pool slot info
}

sg_shader_info :: struct {
    slot: sg_slot_info; // resource pool slot info
}

sg_pipeline_info :: struct {
    slot: sg_slot_info; // resource pool slot info
}

sg_attachments_info :: struct {
    slot: sg_slot_info; // resource pool slot info
}

/*
sg_frame_stats

Allows to track generic and backend-specific stats about a
render frame. Obtained by calling sg_query_frame_stats(). The returned
struct contains information about the *previous* frame.
*/
sg_frame_stats_gl :: struct {
    num_bind_buffer:                 u32;
    num_active_texture:              u32;
    num_bind_texture:                u32;
    num_bind_sampler:                u32;
    num_use_program:                 u32;
    num_render_state:                u32;
    num_vertex_attrib_pointer:       u32;
    num_vertex_attrib_divisor:       u32;
    num_enable_vertex_attrib_array:  u32;
    num_disable_vertex_attrib_array: u32;
    num_uniform:                     u32;
}

sg_frame_stats_d3d11_pass :: struct {
    num_om_set_render_targets:    u32;
    num_clear_render_target_view: u32;
    num_clear_depth_stencil_view: u32;
    num_resolve_subresource:      u32;
}

sg_frame_stats_d3d11_pipeline :: struct {
    num_rs_set_state:               u32;
    num_om_set_depth_stencil_state: u32;
    num_om_set_blend_state:         u32;
    num_ia_set_primitive_topology:  u32;
    num_ia_set_input_layout:        u32;
    num_vs_set_shader:              u32;
    num_vs_set_constant_buffers:    u32;
    num_ps_set_shader:              u32;
    num_ps_set_constant_buffers:    u32;
}

sg_frame_stats_d3d11_bindings :: struct {
    num_ia_set_vertex_buffers:   u32;
    num_ia_set_index_buffer:     u32;
    num_vs_set_shader_resources: u32;
    num_ps_set_shader_resources: u32;
    num_vs_set_samplers:         u32;
    num_ps_set_samplers:         u32;
}

sg_frame_stats_d3d11_uniforms :: struct {
    num_update_subresource: u32;
}

sg_frame_stats_d3d11_draw :: struct {
    num_draw_indexed_instanced: u32;
    num_draw_indexed:           u32;
    num_draw_instanced:         u32;
    num_draw:                   u32;
}

sg_frame_stats_d3d11 :: struct {
    pass:      sg_frame_stats_d3d11_pass;
    pipeline:  sg_frame_stats_d3d11_pipeline;
    bindings:  sg_frame_stats_d3d11_bindings;
    uniforms:  sg_frame_stats_d3d11_uniforms;
    draw:      sg_frame_stats_d3d11_draw;
    num_map:   u32;
    num_unmap: u32;
}

sg_frame_stats_metal_idpool :: struct {
    num_added:             u32;
    num_released:          u32;
    num_garbage_collected: u32;
}

sg_frame_stats_metal_pipeline :: struct {
    num_set_blend_color:             u32;
    num_set_cull_mode:               u32;
    num_set_front_facing_winding:    u32;
    num_set_stencil_reference_value: u32;
    num_set_depth_bias:              u32;
    num_set_render_pipeline_state:   u32;
    num_set_depth_stencil_state:     u32;
}

sg_frame_stats_metal_bindings :: struct {
    num_set_vertex_buffer:          u32;
    num_set_vertex_texture:         u32;
    num_set_vertex_sampler_state:   u32;
    num_set_fragment_buffer:        u32;
    num_set_fragment_texture:       u32;
    num_set_fragment_sampler_state: u32;
}

sg_frame_stats_metal_uniforms :: struct {
    num_set_vertex_buffer_offset:   u32;
    num_set_fragment_buffer_offset: u32;
}

sg_frame_stats_metal :: struct {
    idpool:   sg_frame_stats_metal_idpool;
    pipeline: sg_frame_stats_metal_pipeline;
    bindings: sg_frame_stats_metal_bindings;
    uniforms: sg_frame_stats_metal_uniforms;
}

sg_frame_stats_wgpu_uniforms :: struct {
    num_set_bindgroup: u32;
    size_write_buffer: u32;
}

sg_frame_stats_wgpu_bindings :: struct {
    num_set_vertex_buffer:                    u32;
    num_skip_redundant_vertex_buffer:         u32;
    num_set_index_buffer:                     u32;
    num_skip_redundant_index_buffer:          u32;
    num_create_bindgroup:                     u32;
    num_discard_bindgroup:                    u32;
    num_set_bindgroup:                        u32;
    num_skip_redundant_bindgroup:             u32;
    num_bindgroup_cache_hits:                 u32;
    num_bindgroup_cache_misses:               u32;
    num_bindgroup_cache_collisions:           u32;
    num_bindgroup_cache_hash_vs_key_mismatch: u32;
}

sg_frame_stats_wgpu :: struct {
    uniforms: sg_frame_stats_wgpu_uniforms;
    bindings: sg_frame_stats_wgpu_bindings;
}

sg_frame_stats :: struct {
    frame_index:            u32; // current frame counter, starts at 0

    num_passes:             u32;
    num_apply_viewport:     u32;
    num_apply_scissor_rect: u32;
    num_apply_pipeline:     u32;
    num_apply_bindings:     u32;
    num_apply_uniforms:     u32;
    num_draw:               u32;
    num_update_buffer:      u32;
    num_append_buffer:      u32;
    num_update_image:       u32;

    size_apply_uniforms:    u32;
    size_update_buffer:     u32;
    size_append_buffer:     u32;
    size_update_image:      u32;

    gl:                     sg_frame_stats_gl;
    d3d11:                  sg_frame_stats_d3d11;
    metal:                  sg_frame_stats_metal;
    wgpu:                   sg_frame_stats_wgpu;
}

sg_log_item :: enum u32 {
    OK                                                                   :: 0;
    MALLOC_FAILED                                                        :: 1;
    GL_TEXTURE_FORMAT_NOT_SUPPORTED                                      :: 2;
    GL_3D_TEXTURES_NOT_SUPPORTED                                         :: 3;
    GL_ARRAY_TEXTURES_NOT_SUPPORTED                                      :: 4;
    GL_SHADER_COMPILATION_FAILED                                         :: 5;
    GL_SHADER_LINKING_FAILED                                             :: 6;
    GL_VERTEX_ATTRIBUTE_NOT_FOUND_IN_SHADER                              :: 7;
    GL_TEXTURE_NAME_NOT_FOUND_IN_SHADER                                  :: 8;
    GL_FRAMEBUFFER_STATUS_UNDEFINED                                      :: 9;
    GL_FRAMEBUFFER_STATUS_INCOMPLETE_ATTACHMENT                          :: 10;
    GL_FRAMEBUFFER_STATUS_INCOMPLETE_MISSING_ATTACHMENT                  :: 11;
    GL_FRAMEBUFFER_STATUS_UNSUPPORTED                                    :: 12;
    GL_FRAMEBUFFER_STATUS_INCOMPLETE_MULTISAMPLE                         :: 13;
    GL_FRAMEBUFFER_STATUS_UNKNOWN                                        :: 14;
    D3D11_CREATE_BUFFER_FAILED                                           :: 15;
    D3D11_CREATE_BUFFER_SRV_FAILED                                       :: 16;
    D3D11_CREATE_DEPTH_TEXTURE_UNSUPPORTED_PIXEL_FORMAT                  :: 17;
    D3D11_CREATE_DEPTH_TEXTURE_FAILED                                    :: 18;
    D3D11_CREATE_2D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT                     :: 19;
    D3D11_CREATE_2D_TEXTURE_FAILED                                       :: 20;
    D3D11_CREATE_2D_SRV_FAILED                                           :: 21;
    D3D11_CREATE_3D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT                     :: 22;
    D3D11_CREATE_3D_TEXTURE_FAILED                                       :: 23;
    D3D11_CREATE_3D_SRV_FAILED                                           :: 24;
    D3D11_CREATE_MSAA_TEXTURE_FAILED                                     :: 25;
    D3D11_CREATE_SAMPLER_STATE_FAILED                                    :: 26;
    D3D11_LOAD_D3DCOMPILER_47_DLL_FAILED                                 :: 27;
    D3D11_SHADER_COMPILATION_FAILED                                      :: 28;
    D3D11_SHADER_COMPILATION_OUTPUT                                      :: 29;
    D3D11_CREATE_CONSTANT_BUFFER_FAILED                                  :: 30;
    D3D11_CREATE_INPUT_LAYOUT_FAILED                                     :: 31;
    D3D11_CREATE_RASTERIZER_STATE_FAILED                                 :: 32;
    D3D11_CREATE_DEPTH_STENCIL_STATE_FAILED                              :: 33;
    D3D11_CREATE_BLEND_STATE_FAILED                                      :: 34;
    D3D11_CREATE_RTV_FAILED                                              :: 35;
    D3D11_CREATE_DSV_FAILED                                              :: 36;
    D3D11_MAP_FOR_UPDATE_BUFFER_FAILED                                   :: 37;
    D3D11_MAP_FOR_APPEND_BUFFER_FAILED                                   :: 38;
    D3D11_MAP_FOR_UPDATE_IMAGE_FAILED                                    :: 39;
    METAL_CREATE_BUFFER_FAILED                                           :: 40;
    METAL_TEXTURE_FORMAT_NOT_SUPPORTED                                   :: 41;
    METAL_CREATE_TEXTURE_FAILED                                          :: 42;
    METAL_CREATE_SAMPLER_FAILED                                          :: 43;
    METAL_SHADER_COMPILATION_FAILED                                      :: 44;
    METAL_SHADER_CREATION_FAILED                                         :: 45;
    METAL_SHADER_COMPILATION_OUTPUT                                      :: 46;
    METAL_VERTEX_SHADER_ENTRY_NOT_FOUND                                  :: 47;
    METAL_FRAGMENT_SHADER_ENTRY_NOT_FOUND                                :: 48;
    METAL_CREATE_RPS_FAILED                                              :: 49;
    METAL_CREATE_RPS_OUTPUT                                              :: 50;
    METAL_CREATE_DSS_FAILED                                              :: 51;
    WGPU_BINDGROUPS_POOL_EXHAUSTED                                       :: 52;
    WGPU_BINDGROUPSCACHE_SIZE_GREATER_ONE                                :: 53;
    WGPU_BINDGROUPSCACHE_SIZE_POW2                                       :: 54;
    WGPU_CREATEBINDGROUP_FAILED                                          :: 55;
    WGPU_CREATE_BUFFER_FAILED                                            :: 56;
    WGPU_CREATE_TEXTURE_FAILED                                           :: 57;
    WGPU_CREATE_TEXTURE_VIEW_FAILED                                      :: 58;
    WGPU_CREATE_SAMPLER_FAILED                                           :: 59;
    WGPU_CREATE_SHADER_MODULE_FAILED                                     :: 60;
    WGPU_SHADER_TOO_MANY_IMAGES                                          :: 61;
    WGPU_SHADER_TOO_MANY_SAMPLERS                                        :: 62;
    WGPU_SHADER_TOO_MANY_STORAGEBUFFERS                                  :: 63;
    WGPU_SHADER_CREATE_BINDGROUP_LAYOUT_FAILED                           :: 64;
    WGPU_CREATE_PIPELINE_LAYOUT_FAILED                                   :: 65;
    WGPU_CREATE_RENDER_PIPELINE_FAILED                                   :: 66;
    WGPU_ATTACHMENTS_CREATE_TEXTURE_VIEW_FAILED                          :: 67;
    IDENTICAL_COMMIT_LISTENER                                            :: 68;
    COMMIT_LISTENER_ARRAY_FULL                                           :: 69;
    TRACE_HOOKS_NOT_ENABLED                                              :: 70;
    DEALLOC_BUFFER_INVALID_STATE                                         :: 71;
    DEALLOC_IMAGE_INVALID_STATE                                          :: 72;
    DEALLOC_SAMPLER_INVALID_STATE                                        :: 73;
    DEALLOC_SHADER_INVALID_STATE                                         :: 74;
    DEALLOC_PIPELINE_INVALID_STATE                                       :: 75;
    DEALLOC_ATTACHMENTS_INVALID_STATE                                    :: 76;
    INIT_BUFFER_INVALID_STATE                                            :: 77;
    INIT_IMAGE_INVALID_STATE                                             :: 78;
    INIT_SAMPLER_INVALID_STATE                                           :: 79;
    INIT_SHADER_INVALID_STATE                                            :: 80;
    INIT_PIPELINE_INVALID_STATE                                          :: 81;
    INIT_ATTACHMENTS_INVALID_STATE                                       :: 82;
    UNINIT_BUFFER_INVALID_STATE                                          :: 83;
    UNINIT_IMAGE_INVALID_STATE                                           :: 84;
    UNINIT_SAMPLER_INVALID_STATE                                         :: 85;
    UNINIT_SHADER_INVALID_STATE                                          :: 86;
    UNINIT_PIPELINE_INVALID_STATE                                        :: 87;
    UNINIT_ATTACHMENTS_INVALID_STATE                                     :: 88;
    FAIL_BUFFER_INVALID_STATE                                            :: 89;
    FAIL_IMAGE_INVALID_STATE                                             :: 90;
    FAIL_SAMPLER_INVALID_STATE                                           :: 91;
    FAIL_SHADER_INVALID_STATE                                            :: 92;
    FAIL_PIPELINE_INVALID_STATE                                          :: 93;
    FAIL_ATTACHMENTS_INVALID_STATE                                       :: 94;
    BUFFER_POOL_EXHAUSTED                                                :: 95;
    IMAGE_POOL_EXHAUSTED                                                 :: 96;
    SAMPLER_POOL_EXHAUSTED                                               :: 97;
    SHADER_POOL_EXHAUSTED                                                :: 98;
    PIPELINE_POOL_EXHAUSTED                                              :: 99;
    PASS_POOL_EXHAUSTED                                                  :: 100;
    BEGINPASS_ATTACHMENT_INVALID                                         :: 101;
    DRAW_WITHOUT_BINDINGS                                                :: 102;
    VALIDATE_BUFFERDESC_CANARY                                           :: 103;
    VALIDATE_BUFFERDESC_SIZE                                             :: 104;
    VALIDATE_BUFFERDESC_DATA                                             :: 105;
    VALIDATE_BUFFERDESC_DATA_SIZE                                        :: 106;
    VALIDATE_BUFFERDESC_NO_DATA                                          :: 107;
    VALIDATE_BUFFERDESC_STORAGEBUFFER_SUPPORTED                          :: 108;
    VALIDATE_BUFFERDESC_STORAGEBUFFER_SIZE_MULTIPLE_4                    :: 109;
    VALIDATE_IMAGEDATA_NODATA                                            :: 110;
    VALIDATE_IMAGEDATA_DATA_SIZE                                         :: 111;
    VALIDATE_IMAGEDESC_CANARY                                            :: 112;
    VALIDATE_IMAGEDESC_WIDTH                                             :: 113;
    VALIDATE_IMAGEDESC_HEIGHT                                            :: 114;
    VALIDATE_IMAGEDESC_RT_PIXELFORMAT                                    :: 115;
    VALIDATE_IMAGEDESC_NONRT_PIXELFORMAT                                 :: 116;
    VALIDATE_IMAGEDESC_MSAA_BUT_NO_RT                                    :: 117;
    VALIDATE_IMAGEDESC_NO_MSAA_RT_SUPPORT                                :: 118;
    VALIDATE_IMAGEDESC_MSAA_NUM_MIPMAPS                                  :: 119;
    VALIDATE_IMAGEDESC_MSAA_3D_IMAGE                                     :: 120;
    VALIDATE_IMAGEDESC_DEPTH_3D_IMAGE                                    :: 121;
    VALIDATE_IMAGEDESC_RT_IMMUTABLE                                      :: 122;
    VALIDATE_IMAGEDESC_RT_NO_DATA                                        :: 123;
    VALIDATE_IMAGEDESC_INJECTED_NO_DATA                                  :: 124;
    VALIDATE_IMAGEDESC_DYNAMIC_NO_DATA                                   :: 125;
    VALIDATE_IMAGEDESC_COMPRESSED_IMMUTABLE                              :: 126;
    VALIDATE_SAMPLERDESC_CANARY                                          :: 127;
    VALIDATE_SAMPLERDESC_MINFILTER_NONE                                  :: 128;
    VALIDATE_SAMPLERDESC_MAGFILTER_NONE                                  :: 129;
    VALIDATE_SAMPLERDESC_ANISTROPIC_REQUIRES_LINEAR_FILTERING            :: 130;
    VALIDATE_SHADERDESC_CANARY                                           :: 131;
    VALIDATE_SHADERDESC_SOURCE                                           :: 132;
    VALIDATE_SHADERDESC_BYTECODE                                         :: 133;
    VALIDATE_SHADERDESC_SOURCE_OR_BYTECODE                               :: 134;
    VALIDATE_SHADERDESC_NO_BYTECODE_SIZE                                 :: 135;
    VALIDATE_SHADERDESC_NO_CONT_UBS                                      :: 136;
    VALIDATE_SHADERDESC_NO_CONT_UB_MEMBERS                               :: 137;
    VALIDATE_SHADERDESC_NO_UB_MEMBERS                                    :: 138;
    VALIDATE_SHADERDESC_UB_MEMBER_NAME                                   :: 139;
    VALIDATE_SHADERDESC_UB_SIZE_MISMATCH                                 :: 140;
    VALIDATE_SHADERDESC_UB_ARRAY_COUNT                                   :: 141;
    VALIDATE_SHADERDESC_UB_STD140_ARRAY_TYPE                             :: 142;
    VALIDATE_SHADERDESC_NO_CONT_STORAGEBUFFERS                           :: 143;
    VALIDATE_SHADERDESC_STORAGEBUFFER_READONLY                           :: 144;
    VALIDATE_SHADERDESC_NO_CONT_IMAGES                                   :: 145;
    VALIDATE_SHADERDESC_NO_CONT_SAMPLERS                                 :: 146;
    VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_IMAGE_SLOT_OUT_OF_RANGE       :: 147;
    VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_SAMPLER_SLOT_OUT_OF_RANGE     :: 148;
    VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_NAME_REQUIRED_FOR_GL          :: 149;
    VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_NAME_BUT_NOT_USED         :: 150;
    VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_IMAGE_BUT_NOT_USED        :: 151;
    VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_SAMPLER_BUT_NOT_USED      :: 152;
    VALIDATE_SHADERDESC_NONFILTERING_SAMPLER_REQUIRED                    :: 153;
    VALIDATE_SHADERDESC_COMPARISON_SAMPLER_REQUIRED                      :: 154;
    VALIDATE_SHADERDESC_IMAGE_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS      :: 155;
    VALIDATE_SHADERDESC_SAMPLER_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS    :: 156;
    VALIDATE_SHADERDESC_NO_CONT_IMAGE_SAMPLER_PAIRS                      :: 157;
    VALIDATE_SHADERDESC_ATTR_STRING_TOO_LONG                             :: 158;
    VALIDATE_PIPELINEDESC_CANARY                                         :: 159;
    VALIDATE_PIPELINEDESC_SHADER                                         :: 160;
    VALIDATE_PIPELINEDESC_NO_CONT_ATTRS                                  :: 161;
    VALIDATE_PIPELINEDESC_LAYOUT_STRIDE4                                 :: 162;
    VALIDATE_PIPELINEDESC_ATTR_SEMANTICS                                 :: 163;
    VALIDATE_ATTACHMENTSDESC_CANARY                                      :: 164;
    VALIDATE_ATTACHMENTSDESC_NO_ATTACHMENTS                              :: 165;
    VALIDATE_ATTACHMENTSDESC_NO_CONT_COLOR_ATTS                          :: 166;
    VALIDATE_ATTACHMENTSDESC_IMAGE                                       :: 167;
    VALIDATE_ATTACHMENTSDESC_MIPLEVEL                                    :: 168;
    VALIDATE_ATTACHMENTSDESC_FACE                                        :: 169;
    VALIDATE_ATTACHMENTSDESC_LAYER                                       :: 170;
    VALIDATE_ATTACHMENTSDESC_SLICE                                       :: 171;
    VALIDATE_ATTACHMENTSDESC_IMAGE_NO_RT                                 :: 172;
    VALIDATE_ATTACHMENTSDESC_COLOR_INV_PIXELFORMAT                       :: 173;
    VALIDATE_ATTACHMENTSDESC_DEPTH_INV_PIXELFORMAT                       :: 174;
    VALIDATE_ATTACHMENTSDESC_IMAGE_SIZES                                 :: 175;
    VALIDATE_ATTACHMENTSDESC_IMAGE_SAMPLE_COUNTS                         :: 176;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_COLOR_IMAGE_MSAA                    :: 177;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE                               :: 178;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_SAMPLE_COUNT                        :: 179;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_MIPLEVEL                            :: 180;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_FACE                                :: 181;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_LAYER                               :: 182;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_SLICE                               :: 183;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_NO_RT                         :: 184;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_SIZES                         :: 185;
    VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_FORMAT                        :: 186;
    VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE                                 :: 187;
    VALIDATE_ATTACHMENTSDESC_DEPTH_MIPLEVEL                              :: 188;
    VALIDATE_ATTACHMENTSDESC_DEPTH_FACE                                  :: 189;
    VALIDATE_ATTACHMENTSDESC_DEPTH_LAYER                                 :: 190;
    VALIDATE_ATTACHMENTSDESC_DEPTH_SLICE                                 :: 191;
    VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_NO_RT                           :: 192;
    VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SIZES                           :: 193;
    VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SAMPLE_COUNT                    :: 194;
    VALIDATE_BEGINPASS_CANARY                                            :: 195;
    VALIDATE_BEGINPASS_ATTACHMENTS_EXISTS                                :: 196;
    VALIDATE_BEGINPASS_ATTACHMENTS_VALID                                 :: 197;
    VALIDATE_BEGINPASS_COLOR_ATTACHMENT_IMAGE                            :: 198;
    VALIDATE_BEGINPASS_RESOLVE_ATTACHMENT_IMAGE                          :: 199;
    VALIDATE_BEGINPASS_DEPTHSTENCIL_ATTACHMENT_IMAGE                     :: 200;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH                            :: 201;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH_NOTSET                     :: 202;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT                           :: 203;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT_NOTSET                    :: 204;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT                      :: 205;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT_NOTSET               :: 206;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT                      :: 207;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT_NOTSET               :: 208;
    VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_DEPTHFORMAT_NOTSET               :: 209;
    VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE            :: 210;
    VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE_NOTSET     :: 211;
    VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE        :: 212;
    VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE_NOTSET :: 213;
    VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE           :: 214;
    VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE_NOTSET    :: 215;
    VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW                 :: 216;
    VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW_NOTSET          :: 217;
    VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW                :: 218;
    VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW_NOTSET         :: 219;
    VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW           :: 220;
    VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW_NOTSET    :: 221;
    VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW                  :: 222;
    VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW_NOTSET           :: 223;
    VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW                 :: 224;
    VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW_NOTSET          :: 225;
    VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW            :: 226;
    VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW_NOTSET     :: 227;
    VALIDATE_BEGINPASS_SWAPCHAIN_GL_EXPECT_FRAMEBUFFER_NOTSET            :: 228;
    VALIDATE_APIP_PIPELINE_VALID_ID                                      :: 229;
    VALIDATE_APIP_PIPELINE_EXISTS                                        :: 230;
    VALIDATE_APIP_PIPELINE_VALID                                         :: 231;
    VALIDATE_APIP_SHADER_EXISTS                                          :: 232;
    VALIDATE_APIP_SHADER_VALID                                           :: 233;
    VALIDATE_APIP_CURPASS_ATTACHMENTS_EXISTS                             :: 234;
    VALIDATE_APIP_CURPASS_ATTACHMENTS_VALID                              :: 235;
    VALIDATE_APIP_ATT_COUNT                                              :: 236;
    VALIDATE_APIP_COLOR_FORMAT                                           :: 237;
    VALIDATE_APIP_DEPTH_FORMAT                                           :: 238;
    VALIDATE_APIP_SAMPLE_COUNT                                           :: 239;
    VALIDATE_ABND_PIPELINE                                               :: 240;
    VALIDATE_ABND_PIPELINE_EXISTS                                        :: 241;
    VALIDATE_ABND_PIPELINE_VALID                                         :: 242;
    VALIDATE_ABND_VBS                                                    :: 243;
    VALIDATE_ABND_VB_EXISTS                                              :: 244;
    VALIDATE_ABND_VB_TYPE                                                :: 245;
    VALIDATE_ABND_VB_OVERFLOW                                            :: 246;
    VALIDATE_ABND_NO_IB                                                  :: 247;
    VALIDATE_ABND_IB                                                     :: 248;
    VALIDATE_ABND_IB_EXISTS                                              :: 249;
    VALIDATE_ABND_IB_TYPE                                                :: 250;
    VALIDATE_ABND_IB_OVERFLOW                                            :: 251;
    VALIDATE_ABND_VS_EXPECTED_IMAGE_BINDING                              :: 252;
    VALIDATE_ABND_VS_IMG_EXISTS                                          :: 253;
    VALIDATE_ABND_VS_IMAGE_TYPE_MISMATCH                                 :: 254;
    VALIDATE_ABND_VS_IMAGE_MSAA                                          :: 255;
    VALIDATE_ABND_VS_EXPECTED_FILTERABLE_IMAGE                           :: 256;
    VALIDATE_ABND_VS_EXPECTED_DEPTH_IMAGE                                :: 257;
    VALIDATE_ABND_VS_UNEXPECTED_IMAGE_BINDING                            :: 258;
    VALIDATE_ABND_VS_EXPECTED_SAMPLER_BINDING                            :: 259;
    VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_COMPARE_NEVER                    :: 260;
    VALIDATE_ABND_VS_EXPECTED_SAMPLER_COMPARE_NEVER                      :: 261;
    VALIDATE_ABND_VS_EXPECTED_NONFILTERING_SAMPLER                       :: 262;
    VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_BINDING                          :: 263;
    VALIDATE_ABND_VS_SMP_EXISTS                                          :: 264;
    VALIDATE_ABND_VS_EXPECTED_STORAGEBUFFER_BINDING                      :: 265;
    VALIDATE_ABND_VS_STORAGEBUFFER_EXISTS                                :: 266;
    VALIDATE_ABND_VS_STORAGEBUFFER_BINDING_BUFFERTYPE                    :: 267;
    VALIDATE_ABND_VS_UNEXPECTED_STORAGEBUFFER_BINDING                    :: 268;
    VALIDATE_ABND_FS_EXPECTED_IMAGE_BINDING                              :: 269;
    VALIDATE_ABND_FS_IMG_EXISTS                                          :: 270;
    VALIDATE_ABND_FS_IMAGE_TYPE_MISMATCH                                 :: 271;
    VALIDATE_ABND_FS_IMAGE_MSAA                                          :: 272;
    VALIDATE_ABND_FS_EXPECTED_FILTERABLE_IMAGE                           :: 273;
    VALIDATE_ABND_FS_EXPECTED_DEPTH_IMAGE                                :: 274;
    VALIDATE_ABND_FS_UNEXPECTED_IMAGE_BINDING                            :: 275;
    VALIDATE_ABND_FS_EXPECTED_SAMPLER_BINDING                            :: 276;
    VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_COMPARE_NEVER                    :: 277;
    VALIDATE_ABND_FS_EXPECTED_SAMPLER_COMPARE_NEVER                      :: 278;
    VALIDATE_ABND_FS_EXPECTED_NONFILTERING_SAMPLER                       :: 279;
    VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_BINDING                          :: 280;
    VALIDATE_ABND_FS_SMP_EXISTS                                          :: 281;
    VALIDATE_ABND_FS_EXPECTED_STORAGEBUFFER_BINDING                      :: 282;
    VALIDATE_ABND_FS_STORAGEBUFFER_EXISTS                                :: 283;
    VALIDATE_ABND_FS_STORAGEBUFFER_BINDING_BUFFERTYPE                    :: 284;
    VALIDATE_ABND_FS_UNEXPECTED_STORAGEBUFFER_BINDING                    :: 285;
    VALIDATE_AUB_NO_PIPELINE                                             :: 286;
    VALIDATE_AUB_NO_UB_AT_SLOT                                           :: 287;
    VALIDATE_AUB_SIZE                                                    :: 288;
    VALIDATE_UPDATEBUF_USAGE                                             :: 289;
    VALIDATE_UPDATEBUF_SIZE                                              :: 290;
    VALIDATE_UPDATEBUF_ONCE                                              :: 291;
    VALIDATE_UPDATEBUF_APPEND                                            :: 292;
    VALIDATE_APPENDBUF_USAGE                                             :: 293;
    VALIDATE_APPENDBUF_SIZE                                              :: 294;
    VALIDATE_APPENDBUF_UPDATE                                            :: 295;
    VALIDATE_UPDIMG_USAGE                                                :: 296;
    VALIDATE_UPDIMG_ONCE                                                 :: 297;
    VALIDATION_FAILED                                                    :: 298;
    SG_LOGITEM_OK                                                                   :: OK;
    SG_LOGITEM_MALLOC_FAILED                                                        :: MALLOC_FAILED;
    SG_LOGITEM_GL_TEXTURE_FORMAT_NOT_SUPPORTED                                      :: GL_TEXTURE_FORMAT_NOT_SUPPORTED;
    SG_LOGITEM_GL_3D_TEXTURES_NOT_SUPPORTED                                         :: GL_3D_TEXTURES_NOT_SUPPORTED;
    SG_LOGITEM_GL_ARRAY_TEXTURES_NOT_SUPPORTED                                      :: GL_ARRAY_TEXTURES_NOT_SUPPORTED;
    SG_LOGITEM_GL_SHADER_COMPILATION_FAILED                                         :: GL_SHADER_COMPILATION_FAILED;
    SG_LOGITEM_GL_SHADER_LINKING_FAILED                                             :: GL_SHADER_LINKING_FAILED;
    SG_LOGITEM_GL_VERTEX_ATTRIBUTE_NOT_FOUND_IN_SHADER                              :: GL_VERTEX_ATTRIBUTE_NOT_FOUND_IN_SHADER;
    SG_LOGITEM_GL_TEXTURE_NAME_NOT_FOUND_IN_SHADER                                  :: GL_TEXTURE_NAME_NOT_FOUND_IN_SHADER;
    SG_LOGITEM_GL_FRAMEBUFFER_STATUS_UNDEFINED                                      :: GL_FRAMEBUFFER_STATUS_UNDEFINED;
    SG_LOGITEM_GL_FRAMEBUFFER_STATUS_INCOMPLETE_ATTACHMENT                          :: GL_FRAMEBUFFER_STATUS_INCOMPLETE_ATTACHMENT;
    SG_LOGITEM_GL_FRAMEBUFFER_STATUS_INCOMPLETE_MISSING_ATTACHMENT                  :: GL_FRAMEBUFFER_STATUS_INCOMPLETE_MISSING_ATTACHMENT;
    SG_LOGITEM_GL_FRAMEBUFFER_STATUS_UNSUPPORTED                                    :: GL_FRAMEBUFFER_STATUS_UNSUPPORTED;
    SG_LOGITEM_GL_FRAMEBUFFER_STATUS_INCOMPLETE_MULTISAMPLE                         :: GL_FRAMEBUFFER_STATUS_INCOMPLETE_MULTISAMPLE;
    SG_LOGITEM_GL_FRAMEBUFFER_STATUS_UNKNOWN                                        :: GL_FRAMEBUFFER_STATUS_UNKNOWN;
    SG_LOGITEM_D3D11_CREATE_BUFFER_FAILED                                           :: D3D11_CREATE_BUFFER_FAILED;
    SG_LOGITEM_D3D11_CREATE_BUFFER_SRV_FAILED                                       :: D3D11_CREATE_BUFFER_SRV_FAILED;
    SG_LOGITEM_D3D11_CREATE_DEPTH_TEXTURE_UNSUPPORTED_PIXEL_FORMAT                  :: D3D11_CREATE_DEPTH_TEXTURE_UNSUPPORTED_PIXEL_FORMAT;
    SG_LOGITEM_D3D11_CREATE_DEPTH_TEXTURE_FAILED                                    :: D3D11_CREATE_DEPTH_TEXTURE_FAILED;
    SG_LOGITEM_D3D11_CREATE_2D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT                     :: D3D11_CREATE_2D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT;
    SG_LOGITEM_D3D11_CREATE_2D_TEXTURE_FAILED                                       :: D3D11_CREATE_2D_TEXTURE_FAILED;
    SG_LOGITEM_D3D11_CREATE_2D_SRV_FAILED                                           :: D3D11_CREATE_2D_SRV_FAILED;
    SG_LOGITEM_D3D11_CREATE_3D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT                     :: D3D11_CREATE_3D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT;
    SG_LOGITEM_D3D11_CREATE_3D_TEXTURE_FAILED                                       :: D3D11_CREATE_3D_TEXTURE_FAILED;
    SG_LOGITEM_D3D11_CREATE_3D_SRV_FAILED                                           :: D3D11_CREATE_3D_SRV_FAILED;
    SG_LOGITEM_D3D11_CREATE_MSAA_TEXTURE_FAILED                                     :: D3D11_CREATE_MSAA_TEXTURE_FAILED;
    SG_LOGITEM_D3D11_CREATE_SAMPLER_STATE_FAILED                                    :: D3D11_CREATE_SAMPLER_STATE_FAILED;
    SG_LOGITEM_D3D11_LOAD_D3DCOMPILER_47_DLL_FAILED                                 :: D3D11_LOAD_D3DCOMPILER_47_DLL_FAILED;
    SG_LOGITEM_D3D11_SHADER_COMPILATION_FAILED                                      :: D3D11_SHADER_COMPILATION_FAILED;
    SG_LOGITEM_D3D11_SHADER_COMPILATION_OUTPUT                                      :: D3D11_SHADER_COMPILATION_OUTPUT;
    SG_LOGITEM_D3D11_CREATE_CONSTANT_BUFFER_FAILED                                  :: D3D11_CREATE_CONSTANT_BUFFER_FAILED;
    SG_LOGITEM_D3D11_CREATE_INPUT_LAYOUT_FAILED                                     :: D3D11_CREATE_INPUT_LAYOUT_FAILED;
    SG_LOGITEM_D3D11_CREATE_RASTERIZER_STATE_FAILED                                 :: D3D11_CREATE_RASTERIZER_STATE_FAILED;
    SG_LOGITEM_D3D11_CREATE_DEPTH_STENCIL_STATE_FAILED                              :: D3D11_CREATE_DEPTH_STENCIL_STATE_FAILED;
    SG_LOGITEM_D3D11_CREATE_BLEND_STATE_FAILED                                      :: D3D11_CREATE_BLEND_STATE_FAILED;
    SG_LOGITEM_D3D11_CREATE_RTV_FAILED                                              :: D3D11_CREATE_RTV_FAILED;
    SG_LOGITEM_D3D11_CREATE_DSV_FAILED                                              :: D3D11_CREATE_DSV_FAILED;
    SG_LOGITEM_D3D11_MAP_FOR_UPDATE_BUFFER_FAILED                                   :: D3D11_MAP_FOR_UPDATE_BUFFER_FAILED;
    SG_LOGITEM_D3D11_MAP_FOR_APPEND_BUFFER_FAILED                                   :: D3D11_MAP_FOR_APPEND_BUFFER_FAILED;
    SG_LOGITEM_D3D11_MAP_FOR_UPDATE_IMAGE_FAILED                                    :: D3D11_MAP_FOR_UPDATE_IMAGE_FAILED;
    SG_LOGITEM_METAL_CREATE_BUFFER_FAILED                                           :: METAL_CREATE_BUFFER_FAILED;
    SG_LOGITEM_METAL_TEXTURE_FORMAT_NOT_SUPPORTED                                   :: METAL_TEXTURE_FORMAT_NOT_SUPPORTED;
    SG_LOGITEM_METAL_CREATE_TEXTURE_FAILED                                          :: METAL_CREATE_TEXTURE_FAILED;
    SG_LOGITEM_METAL_CREATE_SAMPLER_FAILED                                          :: METAL_CREATE_SAMPLER_FAILED;
    SG_LOGITEM_METAL_SHADER_COMPILATION_FAILED                                      :: METAL_SHADER_COMPILATION_FAILED;
    SG_LOGITEM_METAL_SHADER_CREATION_FAILED                                         :: METAL_SHADER_CREATION_FAILED;
    SG_LOGITEM_METAL_SHADER_COMPILATION_OUTPUT                                      :: METAL_SHADER_COMPILATION_OUTPUT;
    SG_LOGITEM_METAL_VERTEX_SHADER_ENTRY_NOT_FOUND                                  :: METAL_VERTEX_SHADER_ENTRY_NOT_FOUND;
    SG_LOGITEM_METAL_FRAGMENT_SHADER_ENTRY_NOT_FOUND                                :: METAL_FRAGMENT_SHADER_ENTRY_NOT_FOUND;
    SG_LOGITEM_METAL_CREATE_RPS_FAILED                                              :: METAL_CREATE_RPS_FAILED;
    SG_LOGITEM_METAL_CREATE_RPS_OUTPUT                                              :: METAL_CREATE_RPS_OUTPUT;
    SG_LOGITEM_METAL_CREATE_DSS_FAILED                                              :: METAL_CREATE_DSS_FAILED;
    SG_LOGITEM_WGPU_BINDGROUPS_POOL_EXHAUSTED                                       :: WGPU_BINDGROUPS_POOL_EXHAUSTED;
    SG_LOGITEM_WGPU_BINDGROUPSCACHE_SIZE_GREATER_ONE                                :: WGPU_BINDGROUPSCACHE_SIZE_GREATER_ONE;
    SG_LOGITEM_WGPU_BINDGROUPSCACHE_SIZE_POW2                                       :: WGPU_BINDGROUPSCACHE_SIZE_POW2;
    SG_LOGITEM_WGPU_CREATEBINDGROUP_FAILED                                          :: WGPU_CREATEBINDGROUP_FAILED;
    SG_LOGITEM_WGPU_CREATE_BUFFER_FAILED                                            :: WGPU_CREATE_BUFFER_FAILED;
    SG_LOGITEM_WGPU_CREATE_TEXTURE_FAILED                                           :: WGPU_CREATE_TEXTURE_FAILED;
    SG_LOGITEM_WGPU_CREATE_TEXTURE_VIEW_FAILED                                      :: WGPU_CREATE_TEXTURE_VIEW_FAILED;
    SG_LOGITEM_WGPU_CREATE_SAMPLER_FAILED                                           :: WGPU_CREATE_SAMPLER_FAILED;
    SG_LOGITEM_WGPU_CREATE_SHADER_MODULE_FAILED                                     :: WGPU_CREATE_SHADER_MODULE_FAILED;
    SG_LOGITEM_WGPU_SHADER_TOO_MANY_IMAGES                                          :: WGPU_SHADER_TOO_MANY_IMAGES;
    SG_LOGITEM_WGPU_SHADER_TOO_MANY_SAMPLERS                                        :: WGPU_SHADER_TOO_MANY_SAMPLERS;
    SG_LOGITEM_WGPU_SHADER_TOO_MANY_STORAGEBUFFERS                                  :: WGPU_SHADER_TOO_MANY_STORAGEBUFFERS;
    SG_LOGITEM_WGPU_SHADER_CREATE_BINDGROUP_LAYOUT_FAILED                           :: WGPU_SHADER_CREATE_BINDGROUP_LAYOUT_FAILED;
    SG_LOGITEM_WGPU_CREATE_PIPELINE_LAYOUT_FAILED                                   :: WGPU_CREATE_PIPELINE_LAYOUT_FAILED;
    SG_LOGITEM_WGPU_CREATE_RENDER_PIPELINE_FAILED                                   :: WGPU_CREATE_RENDER_PIPELINE_FAILED;
    SG_LOGITEM_WGPU_ATTACHMENTS_CREATE_TEXTURE_VIEW_FAILED                          :: WGPU_ATTACHMENTS_CREATE_TEXTURE_VIEW_FAILED;
    SG_LOGITEM_IDENTICAL_COMMIT_LISTENER                                            :: IDENTICAL_COMMIT_LISTENER;
    SG_LOGITEM_COMMIT_LISTENER_ARRAY_FULL                                           :: COMMIT_LISTENER_ARRAY_FULL;
    SG_LOGITEM_TRACE_HOOKS_NOT_ENABLED                                              :: TRACE_HOOKS_NOT_ENABLED;
    SG_LOGITEM_DEALLOC_BUFFER_INVALID_STATE                                         :: DEALLOC_BUFFER_INVALID_STATE;
    SG_LOGITEM_DEALLOC_IMAGE_INVALID_STATE                                          :: DEALLOC_IMAGE_INVALID_STATE;
    SG_LOGITEM_DEALLOC_SAMPLER_INVALID_STATE                                        :: DEALLOC_SAMPLER_INVALID_STATE;
    SG_LOGITEM_DEALLOC_SHADER_INVALID_STATE                                         :: DEALLOC_SHADER_INVALID_STATE;
    SG_LOGITEM_DEALLOC_PIPELINE_INVALID_STATE                                       :: DEALLOC_PIPELINE_INVALID_STATE;
    SG_LOGITEM_DEALLOC_ATTACHMENTS_INVALID_STATE                                    :: DEALLOC_ATTACHMENTS_INVALID_STATE;
    SG_LOGITEM_INIT_BUFFER_INVALID_STATE                                            :: INIT_BUFFER_INVALID_STATE;
    SG_LOGITEM_INIT_IMAGE_INVALID_STATE                                             :: INIT_IMAGE_INVALID_STATE;
    SG_LOGITEM_INIT_SAMPLER_INVALID_STATE                                           :: INIT_SAMPLER_INVALID_STATE;
    SG_LOGITEM_INIT_SHADER_INVALID_STATE                                            :: INIT_SHADER_INVALID_STATE;
    SG_LOGITEM_INIT_PIPELINE_INVALID_STATE                                          :: INIT_PIPELINE_INVALID_STATE;
    SG_LOGITEM_INIT_ATTACHMENTS_INVALID_STATE                                       :: INIT_ATTACHMENTS_INVALID_STATE;
    SG_LOGITEM_UNINIT_BUFFER_INVALID_STATE                                          :: UNINIT_BUFFER_INVALID_STATE;
    SG_LOGITEM_UNINIT_IMAGE_INVALID_STATE                                           :: UNINIT_IMAGE_INVALID_STATE;
    SG_LOGITEM_UNINIT_SAMPLER_INVALID_STATE                                         :: UNINIT_SAMPLER_INVALID_STATE;
    SG_LOGITEM_UNINIT_SHADER_INVALID_STATE                                          :: UNINIT_SHADER_INVALID_STATE;
    SG_LOGITEM_UNINIT_PIPELINE_INVALID_STATE                                        :: UNINIT_PIPELINE_INVALID_STATE;
    SG_LOGITEM_UNINIT_ATTACHMENTS_INVALID_STATE                                     :: UNINIT_ATTACHMENTS_INVALID_STATE;
    SG_LOGITEM_FAIL_BUFFER_INVALID_STATE                                            :: FAIL_BUFFER_INVALID_STATE;
    SG_LOGITEM_FAIL_IMAGE_INVALID_STATE                                             :: FAIL_IMAGE_INVALID_STATE;
    SG_LOGITEM_FAIL_SAMPLER_INVALID_STATE                                           :: FAIL_SAMPLER_INVALID_STATE;
    SG_LOGITEM_FAIL_SHADER_INVALID_STATE                                            :: FAIL_SHADER_INVALID_STATE;
    SG_LOGITEM_FAIL_PIPELINE_INVALID_STATE                                          :: FAIL_PIPELINE_INVALID_STATE;
    SG_LOGITEM_FAIL_ATTACHMENTS_INVALID_STATE                                       :: FAIL_ATTACHMENTS_INVALID_STATE;
    SG_LOGITEM_BUFFER_POOL_EXHAUSTED                                                :: BUFFER_POOL_EXHAUSTED;
    SG_LOGITEM_IMAGE_POOL_EXHAUSTED                                                 :: IMAGE_POOL_EXHAUSTED;
    SG_LOGITEM_SAMPLER_POOL_EXHAUSTED                                               :: SAMPLER_POOL_EXHAUSTED;
    SG_LOGITEM_SHADER_POOL_EXHAUSTED                                                :: SHADER_POOL_EXHAUSTED;
    SG_LOGITEM_PIPELINE_POOL_EXHAUSTED                                              :: PIPELINE_POOL_EXHAUSTED;
    SG_LOGITEM_PASS_POOL_EXHAUSTED                                                  :: PASS_POOL_EXHAUSTED;
    SG_LOGITEM_BEGINPASS_ATTACHMENT_INVALID                                         :: BEGINPASS_ATTACHMENT_INVALID;
    SG_LOGITEM_DRAW_WITHOUT_BINDINGS                                                :: DRAW_WITHOUT_BINDINGS;
    SG_LOGITEM_VALIDATE_BUFFERDESC_CANARY                                           :: VALIDATE_BUFFERDESC_CANARY;
    SG_LOGITEM_VALIDATE_BUFFERDESC_SIZE                                             :: VALIDATE_BUFFERDESC_SIZE;
    SG_LOGITEM_VALIDATE_BUFFERDESC_DATA                                             :: VALIDATE_BUFFERDESC_DATA;
    SG_LOGITEM_VALIDATE_BUFFERDESC_DATA_SIZE                                        :: VALIDATE_BUFFERDESC_DATA_SIZE;
    SG_LOGITEM_VALIDATE_BUFFERDESC_NO_DATA                                          :: VALIDATE_BUFFERDESC_NO_DATA;
    SG_LOGITEM_VALIDATE_BUFFERDESC_STORAGEBUFFER_SUPPORTED                          :: VALIDATE_BUFFERDESC_STORAGEBUFFER_SUPPORTED;
    SG_LOGITEM_VALIDATE_BUFFERDESC_STORAGEBUFFER_SIZE_MULTIPLE_4                    :: VALIDATE_BUFFERDESC_STORAGEBUFFER_SIZE_MULTIPLE_4;
    SG_LOGITEM_VALIDATE_IMAGEDATA_NODATA                                            :: VALIDATE_IMAGEDATA_NODATA;
    SG_LOGITEM_VALIDATE_IMAGEDATA_DATA_SIZE                                         :: VALIDATE_IMAGEDATA_DATA_SIZE;
    SG_LOGITEM_VALIDATE_IMAGEDESC_CANARY                                            :: VALIDATE_IMAGEDESC_CANARY;
    SG_LOGITEM_VALIDATE_IMAGEDESC_WIDTH                                             :: VALIDATE_IMAGEDESC_WIDTH;
    SG_LOGITEM_VALIDATE_IMAGEDESC_HEIGHT                                            :: VALIDATE_IMAGEDESC_HEIGHT;
    SG_LOGITEM_VALIDATE_IMAGEDESC_RT_PIXELFORMAT                                    :: VALIDATE_IMAGEDESC_RT_PIXELFORMAT;
    SG_LOGITEM_VALIDATE_IMAGEDESC_NONRT_PIXELFORMAT                                 :: VALIDATE_IMAGEDESC_NONRT_PIXELFORMAT;
    SG_LOGITEM_VALIDATE_IMAGEDESC_MSAA_BUT_NO_RT                                    :: VALIDATE_IMAGEDESC_MSAA_BUT_NO_RT;
    SG_LOGITEM_VALIDATE_IMAGEDESC_NO_MSAA_RT_SUPPORT                                :: VALIDATE_IMAGEDESC_NO_MSAA_RT_SUPPORT;
    SG_LOGITEM_VALIDATE_IMAGEDESC_MSAA_NUM_MIPMAPS                                  :: VALIDATE_IMAGEDESC_MSAA_NUM_MIPMAPS;
    SG_LOGITEM_VALIDATE_IMAGEDESC_MSAA_3D_IMAGE                                     :: VALIDATE_IMAGEDESC_MSAA_3D_IMAGE;
    SG_LOGITEM_VALIDATE_IMAGEDESC_DEPTH_3D_IMAGE                                    :: VALIDATE_IMAGEDESC_DEPTH_3D_IMAGE;
    SG_LOGITEM_VALIDATE_IMAGEDESC_RT_IMMUTABLE                                      :: VALIDATE_IMAGEDESC_RT_IMMUTABLE;
    SG_LOGITEM_VALIDATE_IMAGEDESC_RT_NO_DATA                                        :: VALIDATE_IMAGEDESC_RT_NO_DATA;
    SG_LOGITEM_VALIDATE_IMAGEDESC_INJECTED_NO_DATA                                  :: VALIDATE_IMAGEDESC_INJECTED_NO_DATA;
    SG_LOGITEM_VALIDATE_IMAGEDESC_DYNAMIC_NO_DATA                                   :: VALIDATE_IMAGEDESC_DYNAMIC_NO_DATA;
    SG_LOGITEM_VALIDATE_IMAGEDESC_COMPRESSED_IMMUTABLE                              :: VALIDATE_IMAGEDESC_COMPRESSED_IMMUTABLE;
    SG_LOGITEM_VALIDATE_SAMPLERDESC_CANARY                                          :: VALIDATE_SAMPLERDESC_CANARY;
    SG_LOGITEM_VALIDATE_SAMPLERDESC_MINFILTER_NONE                                  :: VALIDATE_SAMPLERDESC_MINFILTER_NONE;
    SG_LOGITEM_VALIDATE_SAMPLERDESC_MAGFILTER_NONE                                  :: VALIDATE_SAMPLERDESC_MAGFILTER_NONE;
    SG_LOGITEM_VALIDATE_SAMPLERDESC_ANISTROPIC_REQUIRES_LINEAR_FILTERING            :: VALIDATE_SAMPLERDESC_ANISTROPIC_REQUIRES_LINEAR_FILTERING;
    SG_LOGITEM_VALIDATE_SHADERDESC_CANARY                                           :: VALIDATE_SHADERDESC_CANARY;
    SG_LOGITEM_VALIDATE_SHADERDESC_SOURCE                                           :: VALIDATE_SHADERDESC_SOURCE;
    SG_LOGITEM_VALIDATE_SHADERDESC_BYTECODE                                         :: VALIDATE_SHADERDESC_BYTECODE;
    SG_LOGITEM_VALIDATE_SHADERDESC_SOURCE_OR_BYTECODE                               :: VALIDATE_SHADERDESC_SOURCE_OR_BYTECODE;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_BYTECODE_SIZE                                 :: VALIDATE_SHADERDESC_NO_BYTECODE_SIZE;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_UBS                                      :: VALIDATE_SHADERDESC_NO_CONT_UBS;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_UB_MEMBERS                               :: VALIDATE_SHADERDESC_NO_CONT_UB_MEMBERS;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_UB_MEMBERS                                    :: VALIDATE_SHADERDESC_NO_UB_MEMBERS;
    SG_LOGITEM_VALIDATE_SHADERDESC_UB_MEMBER_NAME                                   :: VALIDATE_SHADERDESC_UB_MEMBER_NAME;
    SG_LOGITEM_VALIDATE_SHADERDESC_UB_SIZE_MISMATCH                                 :: VALIDATE_SHADERDESC_UB_SIZE_MISMATCH;
    SG_LOGITEM_VALIDATE_SHADERDESC_UB_ARRAY_COUNT                                   :: VALIDATE_SHADERDESC_UB_ARRAY_COUNT;
    SG_LOGITEM_VALIDATE_SHADERDESC_UB_STD140_ARRAY_TYPE                             :: VALIDATE_SHADERDESC_UB_STD140_ARRAY_TYPE;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_STORAGEBUFFERS                           :: VALIDATE_SHADERDESC_NO_CONT_STORAGEBUFFERS;
    SG_LOGITEM_VALIDATE_SHADERDESC_STORAGEBUFFER_READONLY                           :: VALIDATE_SHADERDESC_STORAGEBUFFER_READONLY;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_IMAGES                                   :: VALIDATE_SHADERDESC_NO_CONT_IMAGES;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_SAMPLERS                                 :: VALIDATE_SHADERDESC_NO_CONT_SAMPLERS;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_IMAGE_SLOT_OUT_OF_RANGE       :: VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_IMAGE_SLOT_OUT_OF_RANGE;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_SAMPLER_SLOT_OUT_OF_RANGE     :: VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_SAMPLER_SLOT_OUT_OF_RANGE;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_NAME_REQUIRED_FOR_GL          :: VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_NAME_REQUIRED_FOR_GL;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_NAME_BUT_NOT_USED         :: VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_NAME_BUT_NOT_USED;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_IMAGE_BUT_NOT_USED        :: VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_IMAGE_BUT_NOT_USED;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_SAMPLER_BUT_NOT_USED      :: VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_SAMPLER_BUT_NOT_USED;
    SG_LOGITEM_VALIDATE_SHADERDESC_NONFILTERING_SAMPLER_REQUIRED                    :: VALIDATE_SHADERDESC_NONFILTERING_SAMPLER_REQUIRED;
    SG_LOGITEM_VALIDATE_SHADERDESC_COMPARISON_SAMPLER_REQUIRED                      :: VALIDATE_SHADERDESC_COMPARISON_SAMPLER_REQUIRED;
    SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS      :: VALIDATE_SHADERDESC_IMAGE_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS;
    SG_LOGITEM_VALIDATE_SHADERDESC_SAMPLER_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS    :: VALIDATE_SHADERDESC_SAMPLER_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS;
    SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_IMAGE_SAMPLER_PAIRS                      :: VALIDATE_SHADERDESC_NO_CONT_IMAGE_SAMPLER_PAIRS;
    SG_LOGITEM_VALIDATE_SHADERDESC_ATTR_STRING_TOO_LONG                             :: VALIDATE_SHADERDESC_ATTR_STRING_TOO_LONG;
    SG_LOGITEM_VALIDATE_PIPELINEDESC_CANARY                                         :: VALIDATE_PIPELINEDESC_CANARY;
    SG_LOGITEM_VALIDATE_PIPELINEDESC_SHADER                                         :: VALIDATE_PIPELINEDESC_SHADER;
    SG_LOGITEM_VALIDATE_PIPELINEDESC_NO_CONT_ATTRS                                  :: VALIDATE_PIPELINEDESC_NO_CONT_ATTRS;
    SG_LOGITEM_VALIDATE_PIPELINEDESC_LAYOUT_STRIDE4                                 :: VALIDATE_PIPELINEDESC_LAYOUT_STRIDE4;
    SG_LOGITEM_VALIDATE_PIPELINEDESC_ATTR_SEMANTICS                                 :: VALIDATE_PIPELINEDESC_ATTR_SEMANTICS;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_CANARY                                      :: VALIDATE_ATTACHMENTSDESC_CANARY;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_NO_ATTACHMENTS                              :: VALIDATE_ATTACHMENTSDESC_NO_ATTACHMENTS;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_NO_CONT_COLOR_ATTS                          :: VALIDATE_ATTACHMENTSDESC_NO_CONT_COLOR_ATTS;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE                                       :: VALIDATE_ATTACHMENTSDESC_IMAGE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_MIPLEVEL                                    :: VALIDATE_ATTACHMENTSDESC_MIPLEVEL;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_FACE                                        :: VALIDATE_ATTACHMENTSDESC_FACE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_LAYER                                       :: VALIDATE_ATTACHMENTSDESC_LAYER;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_SLICE                                       :: VALIDATE_ATTACHMENTSDESC_SLICE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE_NO_RT                                 :: VALIDATE_ATTACHMENTSDESC_IMAGE_NO_RT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_COLOR_INV_PIXELFORMAT                       :: VALIDATE_ATTACHMENTSDESC_COLOR_INV_PIXELFORMAT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_INV_PIXELFORMAT                       :: VALIDATE_ATTACHMENTSDESC_DEPTH_INV_PIXELFORMAT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE_SIZES                                 :: VALIDATE_ATTACHMENTSDESC_IMAGE_SIZES;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE_SAMPLE_COUNTS                         :: VALIDATE_ATTACHMENTSDESC_IMAGE_SAMPLE_COUNTS;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_COLOR_IMAGE_MSAA                    :: VALIDATE_ATTACHMENTSDESC_RESOLVE_COLOR_IMAGE_MSAA;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE                               :: VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_SAMPLE_COUNT                        :: VALIDATE_ATTACHMENTSDESC_RESOLVE_SAMPLE_COUNT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_MIPLEVEL                            :: VALIDATE_ATTACHMENTSDESC_RESOLVE_MIPLEVEL;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_FACE                                :: VALIDATE_ATTACHMENTSDESC_RESOLVE_FACE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_LAYER                               :: VALIDATE_ATTACHMENTSDESC_RESOLVE_LAYER;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_SLICE                               :: VALIDATE_ATTACHMENTSDESC_RESOLVE_SLICE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_NO_RT                         :: VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_NO_RT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_SIZES                         :: VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_SIZES;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_FORMAT                        :: VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_FORMAT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE                                 :: VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_MIPLEVEL                              :: VALIDATE_ATTACHMENTSDESC_DEPTH_MIPLEVEL;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_FACE                                  :: VALIDATE_ATTACHMENTSDESC_DEPTH_FACE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_LAYER                                 :: VALIDATE_ATTACHMENTSDESC_DEPTH_LAYER;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_SLICE                                 :: VALIDATE_ATTACHMENTSDESC_DEPTH_SLICE;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_NO_RT                           :: VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_NO_RT;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SIZES                           :: VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SIZES;
    SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SAMPLE_COUNT                    :: VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SAMPLE_COUNT;
    SG_LOGITEM_VALIDATE_BEGINPASS_CANARY                                            :: VALIDATE_BEGINPASS_CANARY;
    SG_LOGITEM_VALIDATE_BEGINPASS_ATTACHMENTS_EXISTS                                :: VALIDATE_BEGINPASS_ATTACHMENTS_EXISTS;
    SG_LOGITEM_VALIDATE_BEGINPASS_ATTACHMENTS_VALID                                 :: VALIDATE_BEGINPASS_ATTACHMENTS_VALID;
    SG_LOGITEM_VALIDATE_BEGINPASS_COLOR_ATTACHMENT_IMAGE                            :: VALIDATE_BEGINPASS_COLOR_ATTACHMENT_IMAGE;
    SG_LOGITEM_VALIDATE_BEGINPASS_RESOLVE_ATTACHMENT_IMAGE                          :: VALIDATE_BEGINPASS_RESOLVE_ATTACHMENT_IMAGE;
    SG_LOGITEM_VALIDATE_BEGINPASS_DEPTHSTENCIL_ATTACHMENT_IMAGE                     :: VALIDATE_BEGINPASS_DEPTHSTENCIL_ATTACHMENT_IMAGE;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH                            :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH_NOTSET                     :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT                           :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT_NOTSET                    :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT                      :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT_NOTSET               :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT                      :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT_NOTSET               :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_DEPTHFORMAT_NOTSET               :: VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_DEPTHFORMAT_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE            :: VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE_NOTSET     :: VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE        :: VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE_NOTSET :: VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE           :: VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE_NOTSET    :: VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW                 :: VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW_NOTSET          :: VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW                :: VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW_NOTSET         :: VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW           :: VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW_NOTSET    :: VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW                  :: VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW_NOTSET           :: VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW                 :: VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW_NOTSET          :: VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW            :: VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW_NOTSET     :: VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW_NOTSET;
    SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_GL_EXPECT_FRAMEBUFFER_NOTSET            :: VALIDATE_BEGINPASS_SWAPCHAIN_GL_EXPECT_FRAMEBUFFER_NOTSET;
    SG_LOGITEM_VALIDATE_APIP_PIPELINE_VALID_ID                                      :: VALIDATE_APIP_PIPELINE_VALID_ID;
    SG_LOGITEM_VALIDATE_APIP_PIPELINE_EXISTS                                        :: VALIDATE_APIP_PIPELINE_EXISTS;
    SG_LOGITEM_VALIDATE_APIP_PIPELINE_VALID                                         :: VALIDATE_APIP_PIPELINE_VALID;
    SG_LOGITEM_VALIDATE_APIP_SHADER_EXISTS                                          :: VALIDATE_APIP_SHADER_EXISTS;
    SG_LOGITEM_VALIDATE_APIP_SHADER_VALID                                           :: VALIDATE_APIP_SHADER_VALID;
    SG_LOGITEM_VALIDATE_APIP_CURPASS_ATTACHMENTS_EXISTS                             :: VALIDATE_APIP_CURPASS_ATTACHMENTS_EXISTS;
    SG_LOGITEM_VALIDATE_APIP_CURPASS_ATTACHMENTS_VALID                              :: VALIDATE_APIP_CURPASS_ATTACHMENTS_VALID;
    SG_LOGITEM_VALIDATE_APIP_ATT_COUNT                                              :: VALIDATE_APIP_ATT_COUNT;
    SG_LOGITEM_VALIDATE_APIP_COLOR_FORMAT                                           :: VALIDATE_APIP_COLOR_FORMAT;
    SG_LOGITEM_VALIDATE_APIP_DEPTH_FORMAT                                           :: VALIDATE_APIP_DEPTH_FORMAT;
    SG_LOGITEM_VALIDATE_APIP_SAMPLE_COUNT                                           :: VALIDATE_APIP_SAMPLE_COUNT;
    SG_LOGITEM_VALIDATE_ABND_PIPELINE                                               :: VALIDATE_ABND_PIPELINE;
    SG_LOGITEM_VALIDATE_ABND_PIPELINE_EXISTS                                        :: VALIDATE_ABND_PIPELINE_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_PIPELINE_VALID                                         :: VALIDATE_ABND_PIPELINE_VALID;
    SG_LOGITEM_VALIDATE_ABND_VBS                                                    :: VALIDATE_ABND_VBS;
    SG_LOGITEM_VALIDATE_ABND_VB_EXISTS                                              :: VALIDATE_ABND_VB_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_VB_TYPE                                                :: VALIDATE_ABND_VB_TYPE;
    SG_LOGITEM_VALIDATE_ABND_VB_OVERFLOW                                            :: VALIDATE_ABND_VB_OVERFLOW;
    SG_LOGITEM_VALIDATE_ABND_NO_IB                                                  :: VALIDATE_ABND_NO_IB;
    SG_LOGITEM_VALIDATE_ABND_IB                                                     :: VALIDATE_ABND_IB;
    SG_LOGITEM_VALIDATE_ABND_IB_EXISTS                                              :: VALIDATE_ABND_IB_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_IB_TYPE                                                :: VALIDATE_ABND_IB_TYPE;
    SG_LOGITEM_VALIDATE_ABND_IB_OVERFLOW                                            :: VALIDATE_ABND_IB_OVERFLOW;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_IMAGE_BINDING                              :: VALIDATE_ABND_VS_EXPECTED_IMAGE_BINDING;
    SG_LOGITEM_VALIDATE_ABND_VS_IMG_EXISTS                                          :: VALIDATE_ABND_VS_IMG_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_VS_IMAGE_TYPE_MISMATCH                                 :: VALIDATE_ABND_VS_IMAGE_TYPE_MISMATCH;
    SG_LOGITEM_VALIDATE_ABND_VS_IMAGE_MSAA                                          :: VALIDATE_ABND_VS_IMAGE_MSAA;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_FILTERABLE_IMAGE                           :: VALIDATE_ABND_VS_EXPECTED_FILTERABLE_IMAGE;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_DEPTH_IMAGE                                :: VALIDATE_ABND_VS_EXPECTED_DEPTH_IMAGE;
    SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_IMAGE_BINDING                            :: VALIDATE_ABND_VS_UNEXPECTED_IMAGE_BINDING;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_SAMPLER_BINDING                            :: VALIDATE_ABND_VS_EXPECTED_SAMPLER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_COMPARE_NEVER                    :: VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_COMPARE_NEVER;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_SAMPLER_COMPARE_NEVER                      :: VALIDATE_ABND_VS_EXPECTED_SAMPLER_COMPARE_NEVER;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_NONFILTERING_SAMPLER                       :: VALIDATE_ABND_VS_EXPECTED_NONFILTERING_SAMPLER;
    SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_BINDING                          :: VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_VS_SMP_EXISTS                                          :: VALIDATE_ABND_VS_SMP_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_STORAGEBUFFER_BINDING                      :: VALIDATE_ABND_VS_EXPECTED_STORAGEBUFFER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_VS_STORAGEBUFFER_EXISTS                                :: VALIDATE_ABND_VS_STORAGEBUFFER_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_VS_STORAGEBUFFER_BINDING_BUFFERTYPE                    :: VALIDATE_ABND_VS_STORAGEBUFFER_BINDING_BUFFERTYPE;
    SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_STORAGEBUFFER_BINDING                    :: VALIDATE_ABND_VS_UNEXPECTED_STORAGEBUFFER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_IMAGE_BINDING                              :: VALIDATE_ABND_FS_EXPECTED_IMAGE_BINDING;
    SG_LOGITEM_VALIDATE_ABND_FS_IMG_EXISTS                                          :: VALIDATE_ABND_FS_IMG_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_FS_IMAGE_TYPE_MISMATCH                                 :: VALIDATE_ABND_FS_IMAGE_TYPE_MISMATCH;
    SG_LOGITEM_VALIDATE_ABND_FS_IMAGE_MSAA                                          :: VALIDATE_ABND_FS_IMAGE_MSAA;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_FILTERABLE_IMAGE                           :: VALIDATE_ABND_FS_EXPECTED_FILTERABLE_IMAGE;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_DEPTH_IMAGE                                :: VALIDATE_ABND_FS_EXPECTED_DEPTH_IMAGE;
    SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_IMAGE_BINDING                            :: VALIDATE_ABND_FS_UNEXPECTED_IMAGE_BINDING;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_SAMPLER_BINDING                            :: VALIDATE_ABND_FS_EXPECTED_SAMPLER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_COMPARE_NEVER                    :: VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_COMPARE_NEVER;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_SAMPLER_COMPARE_NEVER                      :: VALIDATE_ABND_FS_EXPECTED_SAMPLER_COMPARE_NEVER;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_NONFILTERING_SAMPLER                       :: VALIDATE_ABND_FS_EXPECTED_NONFILTERING_SAMPLER;
    SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_BINDING                          :: VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_FS_SMP_EXISTS                                          :: VALIDATE_ABND_FS_SMP_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_STORAGEBUFFER_BINDING                      :: VALIDATE_ABND_FS_EXPECTED_STORAGEBUFFER_BINDING;
    SG_LOGITEM_VALIDATE_ABND_FS_STORAGEBUFFER_EXISTS                                :: VALIDATE_ABND_FS_STORAGEBUFFER_EXISTS;
    SG_LOGITEM_VALIDATE_ABND_FS_STORAGEBUFFER_BINDING_BUFFERTYPE                    :: VALIDATE_ABND_FS_STORAGEBUFFER_BINDING_BUFFERTYPE;
    SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_STORAGEBUFFER_BINDING                    :: VALIDATE_ABND_FS_UNEXPECTED_STORAGEBUFFER_BINDING;
    SG_LOGITEM_VALIDATE_AUB_NO_PIPELINE                                             :: VALIDATE_AUB_NO_PIPELINE;
    SG_LOGITEM_VALIDATE_AUB_NO_UB_AT_SLOT                                           :: VALIDATE_AUB_NO_UB_AT_SLOT;
    SG_LOGITEM_VALIDATE_AUB_SIZE                                                    :: VALIDATE_AUB_SIZE;
    SG_LOGITEM_VALIDATE_UPDATEBUF_USAGE                                             :: VALIDATE_UPDATEBUF_USAGE;
    SG_LOGITEM_VALIDATE_UPDATEBUF_SIZE                                              :: VALIDATE_UPDATEBUF_SIZE;
    SG_LOGITEM_VALIDATE_UPDATEBUF_ONCE                                              :: VALIDATE_UPDATEBUF_ONCE;
    SG_LOGITEM_VALIDATE_UPDATEBUF_APPEND                                            :: VALIDATE_UPDATEBUF_APPEND;
    SG_LOGITEM_VALIDATE_APPENDBUF_USAGE                                             :: VALIDATE_APPENDBUF_USAGE;
    SG_LOGITEM_VALIDATE_APPENDBUF_SIZE                                              :: VALIDATE_APPENDBUF_SIZE;
    SG_LOGITEM_VALIDATE_APPENDBUF_UPDATE                                            :: VALIDATE_APPENDBUF_UPDATE;
    SG_LOGITEM_VALIDATE_UPDIMG_USAGE                                                :: VALIDATE_UPDIMG_USAGE;
    SG_LOGITEM_VALIDATE_UPDIMG_ONCE                                                 :: VALIDATE_UPDIMG_ONCE;
    SG_LOGITEM_VALIDATION_FAILED                                                    :: VALIDATION_FAILED;
}

/*
sg_desc

The sg_desc struct contains configuration values for sokol_gfx,
it is used as parameter to the sg_setup() call.

The default configuration is:

.buffer_pool_size       128
.image_pool_size        128
.sampler_pool_size      64
.shader_pool_size       32
.pipeline_pool_size     64
.pass_pool_size         16
.uniform_buffer_size    4 MB (4*1024*1024)
.max_commit_listeners   1024
.disable_validation     false
.mtl_force_managed_storage_mode false
.wgpu_disable_bindgroups_cache  false
.wgpu_bindgroups_cache_size     1024

.allocator.alloc_fn     0 (in this case, malloc() will be called)
.allocator.free_fn      0 (in this case, free() will be called)
.allocator.user_data    0

.environment.defaults.color_format: default value depends on selected backend:
all GL backends:    SG_PIXELFORMAT_RGBA8
Metal and D3D11:    SG_PIXELFORMAT_BGRA8
WebGPU:             *no default* (must be queried from WebGPU swapchain object)
.environment.defaults.depth_format: SG_PIXELFORMAT_DEPTH_STENCIL
.environment.defaults.sample_count: 1

Metal specific:
(NOTE: All Objective-C object references are transferred through
a bridged (const void*) to sokol_gfx, which will use a unretained
bridged cast (__bridged id<xxx>) to retrieve the Objective-C
references back. Since the bridge cast is unretained, the caller
must hold a strong reference to the Objective-C object for the
duration of the sokol_gfx call!

.mtl_force_managed_storage_mode
when enabled, Metal buffers and texture resources are created in managed storage
mode, otherwise sokol-gfx will decide whether to create buffers and
textures in managed or shared storage mode (this is mainly a debugging option)
.mtl_use_command_buffer_with_retained_references
when true, the sokol-gfx Metal backend will use Metal command buffers which
bump the reference count of resource objects as long as they are inflight,
this is slower than the default command-buffer-with-unretained-references
method, this may be a workaround when confronted with lifetime validation
errors from the Metal validation layer until a proper fix has been implemented
.environment.metal.device
a pointer to the MTLDevice object

D3D11 specific:
.environment.d3d11.device
a pointer to the ID3D11Device object, this must have been created
before sg_setup() is called
.environment.d3d11.device_context
a pointer to the ID3D11DeviceContext object

WebGPU specific:
.wgpu_disable_bindgroups_cache
When this is true, the WebGPU backend will create and immediately
release a BindGroup object in the sg_apply_bindings() call, only
use this for debugging purposes.
.wgpu_bindgroups_cache_size
The size of the bindgroups cache for re-using BindGroup objects
between sg_apply_bindings() calls. The smaller the cache size,
the more likely are cache slot collisions which will cause
a BindGroups object to be destroyed and a new one created.
Use the information returned by sg_query_stats() to check
if this is a frequent occurrence, and increase the cache size as
needed (the default is 1024).
NOTE: wgpu_bindgroups_cache_size must be a power-of-2 number!
.environment.wgpu.device
a WGPUDevice handle

When using sokol_gfx.h and sokol_app.h together, consider using the
helper function sglue_environment() in the sokol_glue.h header to
initialize the sg_desc.environment nested struct. sglue_environment() returns
a completely initialized sg_environment struct with information
provided by sokol_app.h.
*/
sg_environment_defaults :: struct {
    color_format: sg_pixel_format;
    depth_format: sg_pixel_format;
    sample_count: s32;
}

sg_metal_environment :: struct {
    device: *void;
}

sg_d3d11_environment :: struct {
    device:         *void;
    device_context: *void;
}

sg_wgpu_environment :: struct {
    device: *void;
}

sg_environment :: struct {
    defaults: sg_environment_defaults;
    metal:    sg_metal_environment;
    d3d11:    sg_d3d11_environment;
    wgpu:     sg_wgpu_environment;
}

/*
sg_commit_listener

Used with function sg_add_commit_listener() to add a callback
which will be called in sg_commit(). This is useful for libraries
building on top of sokol-gfx to be notified about when a frame
ends (instead of having to guess, or add a manual 'new-frame'
function.
*/
sg_commit_listener :: struct {
    func:      #type (user_data: *void) -> void #c_call;
    user_data: *void;
}

/*
sg_allocator

Used in sg_desc to provide custom memory-alloc and -free functions
to sokol_gfx.h. If memory management should be overridden, both the
alloc_fn and free_fn function must be provided (e.g. it's not valid to
override one function but not the other).
*/
sg_allocator :: struct {
    alloc_fn:  #type (size: u64, user_data: *void) -> *void #c_call;
    free_fn:   #type (ptr: *void, user_data: *void) -> void #c_call;
    user_data: *void;
}

/*
sg_logger

Used in sg_desc to provide a logging function. Please be aware
that without logging function, sokol-gfx will be completely
silent, e.g. it will not report errors, warnings and
validation layer messages. For maximum error verbosity,
compile in debug mode (e.g. NDEBUG *not* defined) and provide a
compatible logger function in the sg_setup() call
(for instance the standard logging function from sokol_log.h).
*/
sg_logger :: struct {
    func:      #type (tag: *u8, log_level: u32, log_item_id: u32, message_or_null: *u8, line_nr: u32, filename_or_null: *u8, user_data: *void) -> void #c_call;

    user_data: *void;
}

sg_desc :: struct {
    _start_canary:                                   u32;
    buffer_pool_size:                                s32;
    image_pool_size:                                 s32;
    sampler_pool_size:                               s32;
    shader_pool_size:                                s32;
    pipeline_pool_size:                              s32;
    attachments_pool_size:                           s32;
    uniform_buffer_size:                             s32;
    max_commit_listeners:                            s32;
    disable_validation:                              bool; // disable validation layer even in debug mode, useful for tests
    mtl_force_managed_storage_mode:                  bool; // for debugging: use Metal managed storage mode for resources even with UMA
    mtl_use_command_buffer_with_retained_references: bool; // Metal: use a managed MTLCommandBuffer which ref-counts used resources
    wgpu_disable_bindgroups_cache:                   bool; // set to true to disable the WebGPU backend BindGroup cache
    wgpu_bindgroups_cache_size:                      s32; // number of slots in the WebGPU bindgroup cache (must be 2^N)
    allocator:                                       sg_allocator;
    logger:                                          sg_logger; // optional log function override
    environment:                                     sg_environment;
    _end_canary:                                     u32;
}

// setup and misc functions
sg_setup :: (desc: *sg_desc) -> void #foreign libsokol;
sg_shutdown :: () -> void #foreign libsokol;
sg_isvalid :: () -> bool #foreign libsokol;
sg_reset_state_cache :: () -> void #foreign libsokol;
sg_install_trace_hooks :: (trace_hooks: *sg_trace_hooks) -> sg_trace_hooks #foreign libsokol;
sg_push_debug_group :: (name: *u8) -> void #foreign libsokol;
sg_pop_debug_group :: () -> void #foreign libsokol;
sg_add_commit_listener :: (listener: sg_commit_listener) -> bool #foreign libsokol;
sg_remove_commit_listener :: (listener: sg_commit_listener) -> bool #foreign libsokol;

// resource creation, destruction and updating
sg_make_buffer :: (desc: *sg_buffer_desc) -> sg_buffer #foreign libsokol;
sg_make_image :: (desc: *sg_image_desc) -> sg_image #foreign libsokol;
sg_make_sampler :: (desc: *sg_sampler_desc) -> sg_sampler #foreign libsokol;
sg_make_shader :: (desc: *sg_shader_desc) -> sg_shader #foreign libsokol;
sg_make_pipeline :: (desc: *sg_pipeline_desc) -> sg_pipeline #foreign libsokol;
sg_make_attachments :: (desc: *sg_attachments_desc) -> sg_attachments #foreign libsokol;
sg_destroy_buffer :: (buf: sg_buffer) -> void #foreign libsokol;
sg_destroy_image :: (img: sg_image) -> void #foreign libsokol;
sg_destroy_sampler :: (smp: sg_sampler) -> void #foreign libsokol;
sg_destroy_shader :: (shd: sg_shader) -> void #foreign libsokol;
sg_destroy_pipeline :: (pip: sg_pipeline) -> void #foreign libsokol;
sg_destroy_attachments :: (atts: sg_attachments) -> void #foreign libsokol;
sg_update_buffer :: (buf: sg_buffer, data: *sg_range) -> void #foreign libsokol;
sg_update_image :: (img: sg_image, data: *sg_image_data) -> void #foreign libsokol;
sg_append_buffer :: (buf: sg_buffer, data: *sg_range) -> s32 #foreign libsokol;
sg_query_buffer_overflow :: (buf: sg_buffer) -> bool #foreign libsokol;
sg_query_buffer_will_overflow :: (buf: sg_buffer, size: u64) -> bool #foreign libsokol;

// rendering functions
sg_begin_pass :: (pass: *sg_pass) -> void #foreign libsokol;
sg_apply_viewport :: (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool) -> void #foreign libsokol;
sg_apply_viewportf :: (x: float, y: float, width: float, height: float, origin_top_left: bool) -> void #foreign libsokol;
sg_apply_scissor_rect :: (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool) -> void #foreign libsokol;
sg_apply_scissor_rectf :: (x: float, y: float, width: float, height: float, origin_top_left: bool) -> void #foreign libsokol;
sg_apply_pipeline :: (pip: sg_pipeline) -> void #foreign libsokol;
sg_apply_bindings :: (bindings: *sg_bindings) -> void #foreign libsokol;
sg_apply_uniforms :: (stage: sg_shader_stage, ub_index: s32, data: *sg_range) -> void #foreign libsokol;
sg_draw :: (base_element: s32, num_elements: s32, num_instances: s32) -> void #foreign libsokol;
sg_end_pass :: () -> void #foreign libsokol;
sg_commit :: () -> void #foreign libsokol;

// getting information
sg_query_desc :: () -> sg_desc #foreign libsokol;
sg_query_backend :: () -> sg_backend #foreign libsokol;
sg_query_features :: () -> sg_features #foreign libsokol;
sg_query_limits :: () -> sg_limits #foreign libsokol;
sg_query_pixelformat :: (fmt: sg_pixel_format) -> sg_pixelformat_info #foreign libsokol;
sg_query_row_pitch :: (fmt: sg_pixel_format, width: s32, row_align_bytes: s32) -> s32 #foreign libsokol;
sg_query_surface_pitch :: (fmt: sg_pixel_format, width: s32, height: s32, row_align_bytes: s32) -> s32 #foreign libsokol;

// get current state of a resource (INITIAL, ALLOC, VALID, FAILED, INVALID)
sg_query_buffer_state :: (buf: sg_buffer) -> sg_resource_state #foreign libsokol;
sg_query_image_state :: (img: sg_image) -> sg_resource_state #foreign libsokol;
sg_query_sampler_state :: (smp: sg_sampler) -> sg_resource_state #foreign libsokol;
sg_query_shader_state :: (shd: sg_shader) -> sg_resource_state #foreign libsokol;
sg_query_pipeline_state :: (pip: sg_pipeline) -> sg_resource_state #foreign libsokol;
sg_query_attachments_state :: (atts: sg_attachments) -> sg_resource_state #foreign libsokol;

// get runtime information about a resource
sg_query_buffer_info :: (buf: sg_buffer) -> sg_buffer_info #foreign libsokol;
sg_query_image_info :: (img: sg_image) -> sg_image_info #foreign libsokol;
sg_query_sampler_info :: (smp: sg_sampler) -> sg_sampler_info #foreign libsokol;
sg_query_shader_info :: (shd: sg_shader) -> sg_shader_info #foreign libsokol;
sg_query_pipeline_info :: (pip: sg_pipeline) -> sg_pipeline_info #foreign libsokol;
sg_query_attachments_info :: (atts: sg_attachments) -> sg_attachments_info #foreign libsokol;

// get desc structs matching a specific resource (NOTE that not all creation attributes may be provided)
sg_query_buffer_desc :: (buf: sg_buffer) -> sg_buffer_desc #foreign libsokol;
sg_query_image_desc :: (img: sg_image) -> sg_image_desc #foreign libsokol;
sg_query_sampler_desc :: (smp: sg_sampler) -> sg_sampler_desc #foreign libsokol;
sg_query_shader_desc :: (shd: sg_shader) -> sg_shader_desc #foreign libsokol;
sg_query_pipeline_desc :: (pip: sg_pipeline) -> sg_pipeline_desc #foreign libsokol;
sg_query_attachments_desc :: (atts: sg_attachments) -> sg_attachments_desc #foreign libsokol;

// get resource creation desc struct with their default values replaced
sg_query_buffer_defaults :: (desc: *sg_buffer_desc) -> sg_buffer_desc #foreign libsokol;
sg_query_image_defaults :: (desc: *sg_image_desc) -> sg_image_desc #foreign libsokol;
sg_query_sampler_defaults :: (desc: *sg_sampler_desc) -> sg_sampler_desc #foreign libsokol;
sg_query_shader_defaults :: (desc: *sg_shader_desc) -> sg_shader_desc #foreign libsokol;
sg_query_pipeline_defaults :: (desc: *sg_pipeline_desc) -> sg_pipeline_desc #foreign libsokol;
sg_query_attachments_defaults :: (desc: *sg_attachments_desc) -> sg_attachments_desc #foreign libsokol;

// separate resource allocation and initialization (for async setup)
sg_alloc_buffer :: () -> sg_buffer #foreign libsokol;
sg_alloc_image :: () -> sg_image #foreign libsokol;
sg_alloc_sampler :: () -> sg_sampler #foreign libsokol;
sg_alloc_shader :: () -> sg_shader #foreign libsokol;
sg_alloc_pipeline :: () -> sg_pipeline #foreign libsokol;
sg_alloc_attachments :: () -> sg_attachments #foreign libsokol;
sg_dealloc_buffer :: (buf: sg_buffer) -> void #foreign libsokol;
sg_dealloc_image :: (img: sg_image) -> void #foreign libsokol;
sg_dealloc_sampler :: (smp: sg_sampler) -> void #foreign libsokol;
sg_dealloc_shader :: (shd: sg_shader) -> void #foreign libsokol;
sg_dealloc_pipeline :: (pip: sg_pipeline) -> void #foreign libsokol;
sg_dealloc_attachments :: (attachments: sg_attachments) -> void #foreign libsokol;
sg_init_buffer :: (buf: sg_buffer, desc: *sg_buffer_desc) -> void #foreign libsokol;
sg_init_image :: (img: sg_image, desc: *sg_image_desc) -> void #foreign libsokol;
sg_init_sampler :: (smg: sg_sampler, desc: *sg_sampler_desc) -> void #foreign libsokol;
sg_init_shader :: (shd: sg_shader, desc: *sg_shader_desc) -> void #foreign libsokol;
sg_init_pipeline :: (pip: sg_pipeline, desc: *sg_pipeline_desc) -> void #foreign libsokol;
sg_init_attachments :: (attachments: sg_attachments, desc: *sg_attachments_desc) -> void #foreign libsokol;
sg_uninit_buffer :: (buf: sg_buffer) -> void #foreign libsokol;
sg_uninit_image :: (img: sg_image) -> void #foreign libsokol;
sg_uninit_sampler :: (smp: sg_sampler) -> void #foreign libsokol;
sg_uninit_shader :: (shd: sg_shader) -> void #foreign libsokol;
sg_uninit_pipeline :: (pip: sg_pipeline) -> void #foreign libsokol;
sg_uninit_attachments :: (atts: sg_attachments) -> void #foreign libsokol;
sg_fail_buffer :: (buf: sg_buffer) -> void #foreign libsokol;
sg_fail_image :: (img: sg_image) -> void #foreign libsokol;
sg_fail_sampler :: (smp: sg_sampler) -> void #foreign libsokol;
sg_fail_shader :: (shd: sg_shader) -> void #foreign libsokol;
sg_fail_pipeline :: (pip: sg_pipeline) -> void #foreign libsokol;
sg_fail_attachments :: (atts: sg_attachments) -> void #foreign libsokol;

// frame stats
sg_enable_frame_stats :: () -> void #foreign libsokol;
sg_disable_frame_stats :: () -> void #foreign libsokol;
sg_frame_stats_enabled :: () -> bool #foreign libsokol;
sg_query_frame_stats :: () -> sg_frame_stats #foreign libsokol;

/* Backend-specific structs and functions, these may come in handy for mixing
sokol-gfx rendering with 'native backend' rendering functions.

This group of functions will be expanded as needed.
*/
sg_d3d11_buffer_info :: struct {
    buf: *void; // ID3D11Buffer*
}

sg_d3d11_image_info :: struct {
    tex2d: *void; // ID3D11Texture2D*
    tex3d: *void; // ID3D11Texture3D*
    res:   *void; // ID3D11Resource* (either tex2d or tex3d)
    srv:   *void; // ID3D11ShaderResourceView*
}

sg_d3d11_sampler_info :: struct {
    smp: *void; // ID3D11SamplerState*
}

sg_d3d11_shader_info :: struct {
    vs_cbufs: [4] *void; // ID3D11Buffer* (vertex stage constant buffers)
    fs_cbufs: [4] *void; // ID3D11Buffer* (fragment stage constant buffers)
    vs:       *void; // ID3D11VertexShader*
    fs:       *void; // ID3D11PixelShader*
}

sg_d3d11_pipeline_info :: struct {
    il:  *void; // ID3D11InputLayout*
    rs:  *void; // ID3D11RasterizerState*
    dss: *void; // ID3D11DepthStencilState*
    bs:  *void; // ID3D11BlendState*
}

sg_d3d11_attachments_info :: struct {
    color_rtv:   [4] *void; // ID3D11RenderTargetView
    resolve_rtv: [4] *void; // ID3D11RenderTargetView
    dsv:         *void; // ID3D11DepthStencilView
}

sg_mtl_buffer_info :: struct {
    buf:         [2] *void; // id<MTLBuffer>
    active_slot: s32;
}

sg_mtl_image_info :: struct {
    tex:         [2] *void; // id<MTLTexture>
    active_slot: s32;
}

sg_mtl_sampler_info :: struct {
    smp: *void; // id<MTLSamplerState>
}

sg_mtl_shader_info :: struct {
    vs_lib:  *void; // id<MTLLibrary>
    fs_lib:  *void; // id<MTLLibrary>
    vs_func: *void; // id<MTLFunction>
    fs_func: *void; // id<MTLFunction>
}

sg_mtl_pipeline_info :: struct {
    rps: *void; // id<MTLRenderPipelineState>
    dss: *void; // id<MTLDepthStencilState>
}

sg_wgpu_buffer_info :: struct {
    buf: *void; // WGPUBuffer
}

sg_wgpu_image_info :: struct {
    tex:  *void; // WGPUTexture
    view: *void; // WGPUTextureView
}

sg_wgpu_sampler_info :: struct {
    smp: *void; // WGPUSampler
}

sg_wgpu_shader_info :: struct {
    vs_mod: *void; // WGPUShaderModule
    fs_mod: *void; // WGPUShaderModule
    bgl:    *void; // WGPUBindGroupLayout;
}

sg_wgpu_pipeline_info :: struct {
    pip: *void; // WGPURenderPipeline
}

sg_wgpu_attachments_info :: struct {
    color_view:   [4] *void; // WGPUTextureView
    resolve_view: [4] *void; // WGPUTextureView
    ds_view:      *void; // WGPUTextureView
}

sg_gl_buffer_info :: struct {
    buf:         [2] u32;
    active_slot: s32;
}

sg_gl_image_info :: struct {
    tex:                [2] u32;
    tex_target:         u32;
    msaa_render_buffer: u32;
    active_slot:        s32;
}

sg_gl_sampler_info :: struct {
    smp: u32;
}

sg_gl_shader_info :: struct {
    prog: u32;
}

sg_gl_attachments_info :: struct {
    framebuffer:              u32;
    msaa_resolve_framebuffer: [4] u32;
}

// D3D11: return ID3D11Device
sg_d3d11_device :: () -> *void #foreign libsokol;

// D3D11: return ID3D11DeviceContext
sg_d3d11_device_context :: () -> *void #foreign libsokol;

// D3D11: get internal buffer resource objects
sg_d3d11_query_buffer_info :: (buf: sg_buffer) -> sg_d3d11_buffer_info #foreign libsokol;

// D3D11: get internal image resource objects
sg_d3d11_query_image_info :: (img: sg_image) -> sg_d3d11_image_info #foreign libsokol;

// D3D11: get internal sampler resource objects
sg_d3d11_query_sampler_info :: (smp: sg_sampler) -> sg_d3d11_sampler_info #foreign libsokol;

// D3D11: get internal shader resource objects
sg_d3d11_query_shader_info :: (shd: sg_shader) -> sg_d3d11_shader_info #foreign libsokol;

// D3D11: get internal pipeline resource objects
sg_d3d11_query_pipeline_info :: (pip: sg_pipeline) -> sg_d3d11_pipeline_info #foreign libsokol;

// D3D11: get internal pass resource objects
sg_d3d11_query_attachments_info :: (atts: sg_attachments) -> sg_d3d11_attachments_info #foreign libsokol;

// Metal: return __bridge-casted MTLDevice
sg_mtl_device :: () -> *void #foreign libsokol;

// Metal: return __bridge-casted MTLRenderCommandEncoder in current pass (or zero if outside pass)
sg_mtl_render_command_encoder :: () -> *void #foreign libsokol;

// Metal: get internal __bridge-casted buffer resource objects
sg_mtl_query_buffer_info :: (buf: sg_buffer) -> sg_mtl_buffer_info #foreign libsokol;

// Metal: get internal __bridge-casted image resource objects
sg_mtl_query_image_info :: (img: sg_image) -> sg_mtl_image_info #foreign libsokol;

// Metal: get internal __bridge-casted sampler resource objects
sg_mtl_query_sampler_info :: (smp: sg_sampler) -> sg_mtl_sampler_info #foreign libsokol;

// Metal: get internal __bridge-casted shader resource objects
sg_mtl_query_shader_info :: (shd: sg_shader) -> sg_mtl_shader_info #foreign libsokol;

// Metal: get internal __bridge-casted pipeline resource objects
sg_mtl_query_pipeline_info :: (pip: sg_pipeline) -> sg_mtl_pipeline_info #foreign libsokol;

// WebGPU: return WGPUDevice object
sg_wgpu_device :: () -> *void #foreign libsokol;

// WebGPU: return WGPUQueue object
sg_wgpu_queue :: () -> *void #foreign libsokol;

// WebGPU: return this frame's WGPUCommandEncoder
sg_wgpu_command_encoder :: () -> *void #foreign libsokol;

// WebGPU: return WGPURenderPassEncoder of current pass
sg_wgpu_render_pass_encoder :: () -> *void #foreign libsokol;

// WebGPU: get internal buffer resource objects
sg_wgpu_query_buffer_info :: (buf: sg_buffer) -> sg_wgpu_buffer_info #foreign libsokol;

// WebGPU: get internal image resource objects
sg_wgpu_query_image_info :: (img: sg_image) -> sg_wgpu_image_info #foreign libsokol;

// WebGPU: get internal sampler resource objects
sg_wgpu_query_sampler_info :: (smp: sg_sampler) -> sg_wgpu_sampler_info #foreign libsokol;

// WebGPU: get internal shader resource objects
sg_wgpu_query_shader_info :: (shd: sg_shader) -> sg_wgpu_shader_info #foreign libsokol;

// WebGPU: get internal pipeline resource objects
sg_wgpu_query_pipeline_info :: (pip: sg_pipeline) -> sg_wgpu_pipeline_info #foreign libsokol;

// WebGPU: get internal pass resource objects
sg_wgpu_query_attachments_info :: (atts: sg_attachments) -> sg_wgpu_attachments_info #foreign libsokol;

// GL: get internal buffer resource objects
sg_gl_query_buffer_info :: (buf: sg_buffer) -> sg_gl_buffer_info #foreign libsokol;

// GL: get internal image resource objects
sg_gl_query_image_info :: (img: sg_image) -> sg_gl_image_info #foreign libsokol;

// GL: get internal sampler resource objects
sg_gl_query_sampler_info :: (smp: sg_sampler) -> sg_gl_sampler_info #foreign libsokol;

// GL: get internal shader resource objects
sg_gl_query_shader_info :: (shd: sg_shader) -> sg_gl_shader_info #foreign libsokol;

// GL: get internal pass resource objects
sg_gl_query_attachments_info :: (atts: sg_attachments) -> sg_gl_attachments_info #foreign libsokol;

sglue_environment :: () -> sg_environment #foreign libsokol;
sglue_swapchain :: () -> sg_swapchain #foreign libsokol;

#scope_file

Foundation :: #library,system,link_always "Foundation";
Cocoa :: #library,system,link_always "Cocoa";
QuartzCore :: #library,system,link_always "QuartzCore";
Metal :: #library,system,link_always "Metal";
MetalKit :: #library,system,link_always "MetalKit";
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

