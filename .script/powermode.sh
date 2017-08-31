#!/bin/bash
if [ "$(acpi -V|grep -o on-line)" == 'on-line' ]; 
	then
		sudo cpupower --cpu all frequency-set -g performance > /dev/null
		xbacklight -set 50
	else
		sudo cpupower --cpu all frequency-set -g powersave > /dev/null
		xbacklight -set 10

fi
