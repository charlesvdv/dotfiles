# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!
#
# This config file uses keycodes (bindsym) and was written for the QWERTY
# layout.
#
# To get a config file with the same key positions, but for your current
# layout, use the i3-config-wizard
#

set $base00 #101299
set $base01 #1f222d
set $base02 #252936
set $base03 #7780a1
set $base04 #C0C5CE
set $base05 #d1d4e0
set $base06 #C9CCDB
set $base07 #ffffff
set $base08 #ee829f
set $base09 #f99170
set $base0A #ffefcc
set $base0B #a5ffe1
set $base0C #97e0ff
set $base0D #97bbf7
set $base0E #c0b7f9
set $base0F #fcc09e


# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:System San Francisco Display 10, FontAwesome 10

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# use these keys for focus, movement, and resize directions when reaching for
# the arrows is not convenient
set $up l
set $down k
set $left j
set $right semicolon

#set mod key to the figure key
set $mod Mod4
# use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec termite


# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec rofi -show run -lines 3 -eh 2 -width 50  -padding 100 -opacity "85" -bw 0 -bc $base01 -bg $base01 -fg $base07 -hlbg $base01 -hlfg "#9575cd" -font "System San Fransisco Display 16"  
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# move the currently focused window to the scratchpad
# bindsym $mod+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
# bindsym $mod+minus scratchpad show

set $ws1 "1: "
set $ws2 "2: "
set $ws5 "5: "
set $ws6 "6"
set $ws7 "7: "
set $ws9 "9: "
set $ws10 "10:"

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10

assign [class="Firefox"] $ws1
assign [class="Nautilus"] $ws5
assign [class="Transmission-gtk"] $ws7
assign [class="Vlc"] $ws9
assign [class="mpv"] $ws9

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Widow Colours
#                         border  background text    indicator
  client.focused          $base01 $base01    $base07 $base0F
  client.focused_inactive $base02 $base02    $base03 $base0F
  client.unfocused        $base02 $base02    $base03 $base0F
  client.urgent           $base02 $base08    $base00 $base0F
 
hide_edge_borders both

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
    font pango: System San Francisco Display, FontAwesome 10
    status_command i3blocks
    position top
    # strip_workspace_numbers yes
    colors {
      separator $base03
      background $base01
      statusline $base05
#                        border  background text
      focused_workspace  $base01 $base01    $base07
      active_workspace   $base01 $base02    $base03
      inactive_workspace $base01 $base01    $base03
      urgent_workspace   $base01 $base01    $base08
    }
}

bindsym $mod+shift+x exec i3lock --color "$base01"

#Multimedia key

#Sound control
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 1 +5%
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 1 -5%
bindsym XF86AudioMute exec --no--startup-id pactl set-sink-mute 1 'toggle'

#Screen brightness control
bindsym XF86MonBrightnessUp exec xbacklight -inc 10
bindsym XF86MonBrightnessDown exec xbacklight -dec 10

#Keyboard backlight
bindsym XF86KbdBrightnessUp exec keyboardlight up 
bindsym XF86KbdBrightnessDown exec keyboardlight down 

#screenshot
bindsym Print exec scrot -s -e 'mv $f ~/Pictures/screenshots/'

bindsym $mod+m move workspace to output left

exec_always feh --bg-scale ~/Pictures/planet_wallpaper.png
exec_always compton -f

exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 
exec nm-applet
