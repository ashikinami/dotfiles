#!/bin/sh
ID=$(xinput list --id-only 'SYNA7DB5:01 06CB:CD40 Touchpad')
xinput set-prop $ID 'libinput Tapping Enabled' 1
xinput set-prop $ID 'libinput Natural Scrolling Enabled' 1
export QT_QPA_PLATFORMTHEME=gtk2
dunst &
exec i3
exec i3 reload

