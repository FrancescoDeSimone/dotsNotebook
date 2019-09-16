#!/usr/bin/env bash

export XAUTHORITY=/home/desi/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

#/usr/bin/sudo -u desi /usr/bin/paplay --server /run/user/1000/pulse/native /home/USERNAME/.i3/sounds/Click1.wav > /dev/null 2>&1

#/usr/bin/notify-send -i /usr/share/icons/gnome/256x256/status/battery-full-charging.png 'Changing Power States' 

msgId="0001"
dunstify -r "$msgId" -t 4000 --urgency=critical "Battery" "$(acpi | awk '{print substr($3,1,length($3)-1)"\n"substr($4,1,length($4)-1)" "$7"\n"$5" left"}')" 
 
