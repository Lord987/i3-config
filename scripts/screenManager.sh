#!/bin/bash    

case $1 in
    "VGA")
	if [[ $(xrandr | grep -E 'VGA1 connected') ]]
	then
	    xrandr --output VGA1 --auto --right-of eDP1
	fi
	;;
    "off")
	if [[ $(xrandr | grep -E 'VGA1 connected') ]]
	then
	    xrandr --output VGA1 --off
	fi
	if [[ $(xrandr | grep -E 'HDMI1 connected') ]]
	then
	    xrandr --output HDMI1 --off
	fi
	;;
    *)
	if [[ $(xrandr | grep -E 'HDMI1 connected') ]]
        then
            case $1 in
	        "left") xrandr --output HDMI1 --auto --left-of eDP1 ;;
	        "right") xrandr --output HDMI1 --auto --right-of eDP1 ;;
	    esac	
        fi
	;;
esac
