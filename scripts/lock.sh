#!/bin/sh

#icon= $HOME"/Pictures/avatar.png"
tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$HOME/Pictures/avatar.png" -geometry '-840+0' -gravity center -composite -matte "$tmpbg"
#((EC1+EC2)/2)-(EC1/2)
#xrandr | grep \* | awk '{print $1}' | awk -F "x" '{print $1}'

#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

i3lock -u -i "$tmpbg" -d
rm "$tmpbg"
