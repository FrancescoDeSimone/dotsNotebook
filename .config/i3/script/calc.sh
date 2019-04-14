#!/bin/bash

operation="sqrt()\nlog()\nexp()\nsin()\ncos()\ntan()\nasin()\nacos()\natan()\nround()"
exp=$(echo -e "$operation" | dmenu -i -p "Insert expression:")
if [ -z "$exp" ];
then
    exit
fi
i=1
while true
do
    exp=$(R --slave --vanilla -e "$exp" | cut -d' ' -f 2-| sed "s/.*/\0\n\n$operation/" | dmenu -p "Result is:") 
    if [ -z "$exp" ];
    then
        break
    fi
    $i=$i+1
done
