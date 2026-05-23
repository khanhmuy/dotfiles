hl.curve("quart", { type = "bezier", points = { { 0.15, 1 }, { 0.5, 1 } } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 6,
    bezier = "quart",
    style = "popin 90%",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 6,
    bezier = "quart",
})
hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 6,
    bezier = "quart",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 6,
    bezier = "quart",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 6,
    bezier = "quart",
    style = "slidefade",
})

hl.config({
    general = {
        gaps_in = 1,
        gaps_out = 2,
        border_size = 0,
        col = {
            active_border = "rgb(f5c2e7)",
            inactive_border = "rgb(f5c2e7)",
        },
        resize_on_border = true,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
})

