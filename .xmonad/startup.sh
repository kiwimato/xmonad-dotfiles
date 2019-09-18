#!/bin/sh

~/.xmonad/monitors.sh

if [ -z "$(pgrep stalonetray)" ] ; then
	if [ "$(xrandr -q | grep ' connected' | wc -l)" == "3" ];then
                stalonetray --geometry 6x1-1920+0 &
        else
		        stalonetray &
	fi
fi

if [ -z "$(pgrep shutter)" ]; then
	shutter --min_at_startup &
fi

if [ -z "$(pgrep feh)" ];then
	feh --bg-scale /usr/share/backgrounds/f29/default/standard/f29.png &
fi

if [ -z "$(pgrep slack)" ]; then
	slack &
fi

# Redshift
if [ -z "$(pgrep redshift)" ] ; then
    redshift &
fi

# Wallpaper
if [ -z "$(pgrep nitrogen)" ] ; then
    nitrogen --restore &
fi

# Screensaver
if [ -z "$(pgrep xscreensaver)" ] ; then
    xscreensaver -no-splash &
fi

# compton
if [ -z "$(pgrep compton)" ] ; then
    compton -b &
fi

# Network Applet
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet &
fi

# Volume icon
if [ -z "$(pgrep volumeicon)" ] ; then
	volumeicon &
fi

