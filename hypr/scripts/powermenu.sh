#!/bin/bash

shutdown='󰐥 Shutdown'
reboot='󰜉 Reboot'
lock=' Lock'
suspend='󰤄 Suspend'
logout='󰗼 Logout'


chosen=$(echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi -dmenu -p "Power" -theme ~/.config/rofi/powermenu.rasi)
case ${chosen} in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
		hyprlock
        ;;
    $suspend)
		systemctl suspend
        ;;
    $logout)
		hyprctl dispatch exit 0
        ;;
esac
