#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Finding the touchpad
ID=$(xinput list --id-only 'SYNA7DB5:01 06CB:CD40 Touchpad')
xinput set-prop $ID 'libinput Tapping Enabled' 1
xinput set-prop $ID 'libinput Natural Scrolling Enabled' 1

#Setting GTK Theme
export QT_QPA_PLATFORMTHEME=gtk2

fusuma & disown &
dunst &
caffeine &

# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps &

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape' &

exec i3 

