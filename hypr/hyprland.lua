hl.monitor({
    output = "eDP-1",
    mode = "1920x1080",
    position = "0x0",
    scale = "1",
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@100",
    position = "auto",
    scale = "1",
    bitdepth = 10,
})

local PWD = "~/.config/hypr"

require("hyprland.autostart")
require("hyprland.env")
require("hyprland.bindings")
require("hyprland.decorations")
require("hyprland.misc")
require("hyprland.rules")