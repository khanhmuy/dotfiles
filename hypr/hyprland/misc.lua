hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_rules = "",
        kb_options = "ctrl:nocaps",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = true,
        },
        sensitivity = 0.4,
    },
    xwayland = {
        force_zero_scaling = true,
    },
    misc = {
        disable_hyprland_logo = false,
    },
    debug = {
        vfr = true,
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
    plugin = {
        hyprgrass = {
            sensitivity = 4.0,
            long_press_delay = 400,
            edge_margin = 10,
        }
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
    workspace_swipe_touch = true,
    workspace_swipe_cancel_ratio = 0.15,
})

hl.plugin.hyprgrass.gesture {
    pattern = {kind = "swipe", fingers = 3, direction = "down"},
    action = "close",
}