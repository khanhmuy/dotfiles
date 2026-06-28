local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind("ALT + F4", hl.dsp.window.close())
hl.bind("SHIFT + " .. mainMod .. " + M", hl.dsp.exec_cmd("hyprshutdown"))
hl.bind("SHIFT + " .. mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + up", hl.dsp.window.fullscreen({mode = "maximized", action = "toggle"}))
hl.bind("ALT + " .. mainMod .. " + up", hl.dsp.window.fullscreen_state({internal = 2, client = 0, action = "toggle"}))
hl.bind(mainMod .. " + G", hl.dsp.window.center())
hl.bind(mainMod .. " + D", hl.dsp.window.pin())
--hl.bind("ALT + TAB", hl.dsp.exec_cmd("snappy-switcher next"))

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call lockScreen lock"))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher toggle"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher clipboard"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher emoji"))
hl.bind("SHIFT + " .. mainMod .. " + C", hl.dsp.exec_cmd("hyprpicker"))

hl.bind(mainMod .. " + F12", hl.dsp.exec_cmd("~/.config/hypr/scripts/gamemode.sh"))
hl.bind(mainMod .. " + F11", hl.dsp.exec_cmd("~/.config/hypr/scripts/goofymon.sh"))

hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output --clipboard-only --freeze --silent"))
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("SHIFT + " .. mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only --freeze --silent"))
hl.bind("CTRL + " .. mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m window --clipboard-only --freeze --silent"))
hl.bind("SHIFT + " .. mainMod .. " + T", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call plugin:screen-toolkit ocr"))

hl.bind(mainMod .. " + 1", hl.dsp.exec_cmd("nautilus"))
hl.bind(mainMod .. " + 2", hl.dsp.exec_cmd("chromium"))
hl.bind(mainMod .. " + 3", hl.dsp.exec_cmd("vesktop"))
hl.bind(mainMod .. " + 4", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nautilus"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +5%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind("ALT + left", hl.dsp.focus({ direction = "left" }))
hl.bind("ALT + right", hl.dsp.focus({ direction = "right" }))
hl.bind("ALT + up", hl.dsp.focus({ direction = "up" }))
hl.bind("ALT + down", hl.dsp.focus({ direction = "down" }))

hl.bind("CTRL + " .. mainMod .. " + left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("CTRL + " .. mainMod .. " + right", hl.dsp.focus({ workspace = "e+1" }))

hl.bind("SHIFT + " .. mainMod .. " + left", hl.dsp.window.move({ workspace = 1, follow = false }))
hl.bind("SHIFT + " .. mainMod .. " + right", hl.dsp.window.move({ workspace = 2, follow = false }))
hl.bind("SHIFT + " .. mainMod .. " + up", hl.dsp.window.move({ workspace = 3, follow = false }))
hl.bind("SHIFT + " .. mainMod .. " + down", hl.dsp.window.move({ workspace = 4, follow = false }))
hl.bind(mainMod .. " + down", hl.dsp.window.move({ workspace = 5, follow = false }))

hl.bind("CTRL + " .. mainMod .. " + 1", hl.dsp.workspace.move({workspace = 2, monitor = "current"}))
hl.bind("CTRL + " .. mainMod .. " + 1", hl.dsp.workspace.move({workspace = 3, monitor = "current"}))
hl.bind("CTRL + " .. mainMod .. " + 1", hl.dsp.workspace.move({workspace = 4, monitor = "current"}))
hl.bind("CTRL + " .. mainMod .. " + 1", hl.dsp.workspace.move({workspace = 5, monitor = "current"}))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())