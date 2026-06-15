hl.monitor({
    output = "eDP-1",
    mode = "1920x1080",
    position = "0x0",
    scale = "1.2",
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@100",
    position = "auto",
    scale = "1",
    bitdepth = 10,
})

hl.on("hyprland.start", function()
    hl.exec_cmd("waypaper --restore")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    --hl.exec_cmd("nm-applet --indicator & disown")
    hl.exec_cmd("blueman-applet & disown")
    hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("easyeffects --gapplication-service")
    hl.exec_cmd("udiskie &")
    hl.exec_cmd("fcitx5")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("snappy-switcher --daemon")
    hl.exec_cmd("emote")
end)