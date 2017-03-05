#!/bin/bash
xrdb -load ~/.Xresources
setxkbmap fr
exec i3
