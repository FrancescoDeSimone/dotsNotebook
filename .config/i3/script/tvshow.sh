#!/bin/bash

function get_list() {
    local list=""
    if [ ! -f /tmp/tvseries.tmp ];
    then
        list=$(curl -s https://eztv1.unblocked.lol/showlist/ | grep -Eo '<a href\=\"\/shows/[0-9]*\/(.*?)</a>' | sed 's/<a href="\|class="thread_link">\|<\/a>//g')
        echo -e "$list" > /tmp/tvseries.tmp
    else
        list=$(cat /tmp/tvseries.tmp)
    fi
    echo -e "$list"
}

if [ $# -eq 0  ]
then
    list=$(get_list)
    echo -e "$list" | sed -e 's/.*\" //g'
else
    regex=".*S[0-9]{2}E[0-9]{2}.*"
    if [[ $1 =~ $regex ]];
    then
        $(killall rofi)
        ep=$(cat /tmp/eps$(date +%d).tmp | grep "$1" | cut -f1 -d "\"")
        $(st -e peerflix $ep --mpv)
        rm /tmp/eps$(date +%d).tmp
    else
        list=$(get_list)
        url="https://eztv1.unblocked.lol"
        url+="$(echo -e "$list" | grep -E "(.*?)\"\s*$1" | cut -f1 -d "\"")"
        ep=$(curl -s $url | grep -Eo "<a href=\"magnet(.*?)</a>" | sed 's/<a href="\|Magnet Link" rel="nofollow"><\/a>\|class="magnet" title="//g')
        echo -e "$ep" > /tmp/eps$(date +%d).tmp
        echo -e "$ep" | sed -e 's/.*\" //g'
    fi
fi
