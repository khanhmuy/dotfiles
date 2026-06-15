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
    opacity = "0.9 override 0.85 override",
    border_size = 0,
})

hl.window_rule({
    name = "opaque",
    match = {
        class = "chromium|com.github.iwalton3.jellyfin-media-player|com.obsproject.Studio|FreeTube|Vmware|qt5ct|VirtualBox Machine",
    },
    opacity = "1 override 0.95 override",
    tile = true,
})

hl.window_rule({
    name = "scrcpy",
    match = {
        initial_class = "scrcpy|Waydroid",
    },
    opacity = "1 override 0.95 override",
})

hl.window_rule({
    name = "games",
    match = {
        initial_class = "steam_app_2325290|Minecraft*.*",
    },
    opacity = "1 override 1 override",
    tile = true,
})

hl.workspace_rule({
    workspace = "1",
    persistent = true,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = "2",
    persistent = true,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = "3",
    persistent = true,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = "4",
    persistent = true,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = "5,",
    persistent = true,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = "6",
    persistent = true,
    monitor = "HDMI-A-1",
})