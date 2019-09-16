#!/bin/sh
# Give dmenu list of all unicode characters to copy.
# Shows the selected character in dunst if running.

# Must have xclip installed to even show menu.

EMOJI=$(cat ~/.config/i3/script/emoji.text) #$(grep -v "#" ~/.config/i3/script/emoji.text | dmenu -i -l 20 -fn Monospace-18)

if [ $# -eq 0 ];
then
    echo "$EMOJI"
else
    c=$(echo "$1" | sed "s/ .*//")
    echo "$c" | tr -d '\n' | xclip -selection clipboard
    notify-send "'$c' copied to clipboard." &
    exit
fi
