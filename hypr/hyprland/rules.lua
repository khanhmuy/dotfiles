hl.layer_rule({
    name = "waybar",
    match = {
        namespace = "waybar",
    },
    blur = true,
})

hl.layer_rule({
    name = "noctalia",
    match = {
        namespace = "noctalia-background-.*$",
    },
    ignore_alpha = 0.5,
    blur = false,
    blur_popups = false,
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
    name = "opaque",
    match = {
        class = "(.*)",
    },
    opacity = "1 override 1 override",
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
    workspace = "5",
    persistent = true,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = "6",
    persistent = true,
    monitor = "eDP-1",
})