#!/bin/bash

select=$(du -ha --exclude-from=/home/desi/.config/i3/script/fuzzyFinderException ~ | sed -e "s|$HOME/||" | tac | awk '{print $2}' |rofi -threads 0 -show -dmenu -i -matching fuzzy)
select=$(echo $select | cut -d ' ' -f 2-)

if [ -z "$select" ]
then
    exit 1
fi

if [[ $select != *"$HOME"* ]];
    then select=$(echo $HOME/$select)
fi

if [[ $(xdg-mime query filetype "${select}") == *"application"* ]];
then
    xdg-open ${select}
else
    st -e xdg-open ${select}
fi
