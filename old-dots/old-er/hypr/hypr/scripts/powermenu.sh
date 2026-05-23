#!/bin/bash

shutdown='󰐥 Shutdown'
reboot='󰜉 Reboot'
lock=' Lock'
suspend='󰤄 Suspend'
logout='󰗼 Logout'


chosen=$(echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi -dmenu -p "Питание" -theme ~/.config/rofi/powermenu.rasi)
case ${chosen} in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
		swaylock --clock --indicator --fade-in 2 --effect-compose "/media/Shared/wallpapers/CatppuccinMocha-Kurzgesagt-CloudyQuasar1.png"
        ;;
    $suspend)
		systemctl suspend && swaylock --clock --indicator --fade-in 2 --effect-compose "/media/Shared/wallpapers/CatppuccinMocha-Kurzgesagt-CloudyQuasar1.png"
        ;;
    $logout)
		hyprctl dispatch exit 0
        ;;
esac
