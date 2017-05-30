#!/bin/bash
xrdb -load ~/.Xresources
setxkbmap fr
exec dbus-launch --exit-with-session -- i3 < /dev/null
