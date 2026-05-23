hl.layer_rule({
    name = "waybar",
    match = {
        namespace = "waybar",
    },
    blur = true,
})

hl.window_rule({
    name = "windowrule-1",
    match = {
        class = "zenity",
    },
    float = true,
    pin = true,
})

hl.window_rule({
    name = "translucent-window",
    match = {
        title = "(.*)",
    },
    opacity = "0.9 override 0.9 override",
    border_size = 0,
})

hl.window_rule({
    name = "opaque",
    match = {
        class = "chromium|com.github.iwalton3.jellyfin-media-player",
    },
    opacity = "1 override 1 override",
})

hl.window_rule({
    name = "scrcpy",
    match = {
        initial_class = "scrcpy",
    },
    opacity = "1 override 1 override",
})

hl.window_rule({
    name = "Sky:COTL",
    match = {
        initial_class = "steam_app_2325290",
    },
    opacity = "1 override 1 override",
    tile = true,
})

hl.window_rule({
    name = "FreeTube",
    match = {
        initial_class = "FreeTube",
    },
    opacity = "1 override 1 override",
    tile = true,
})

hl.workspace_rule({
    workspace = "1",
    persistent = true,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = "2",
    persistent = true,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = "3",
    persistent = true,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = "4",
    persistent = true,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = "6",
    persistent = true,
    monitor = "eDP-1",
})