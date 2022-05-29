#!/bin/bash

function run {
	if ! pgrep $1 ;
	then
		$@&
	fi
}

run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

nitrogen --restore &

xrandr --output Virtual-1 --mode 1440x900 &


