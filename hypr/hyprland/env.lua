hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-dark-cursors")
hl.env("HYPRCURSOR_SIZE", "22")
hl.env("XCURSOR_THEME", "catppuccin-mocha-dark-cursors")
hl.env("XCURSOR_SIZE", "22")

hl.env("MOZ_DISABLE_RDD_SANDBOX", "1")
hl.env("EGL_PLATFORM", "wayland")
hl.env("MOZ_ENABLE_WAYLAND", "1")

hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

hl.env("QT_QPA_PLATFORMTHEME", "gtk3")

--hl.env("GLFW_IM_MODULE", "ibus")
--hl.env("GTK_IM_MODULE", "fcitx")
--hl.env("QT_IM_MODULE", "fcitx")
--hl.env("SDL_IM_MODULE", "fcitx")

hl.env("FP_TRANSFER_DEBUG", "1")
