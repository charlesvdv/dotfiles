#!/bin/bash
xrdb -load ~/.Xresources
setxkbmap fr
exec dbus-launch --exit-with-session ck-launch-session i3 
