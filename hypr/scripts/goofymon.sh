hyprctl keyword monitor "eDP-1, disable";
hyprctl keyword monitor "DP-1, 2560x1440, 0x0, 1"

killall waybar
waybar & disown
