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
        disable_hyprland_logo = true,
    },
    debug = {
        vfr = true,
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})