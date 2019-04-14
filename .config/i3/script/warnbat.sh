#!/bin/bash
msgId="0001"
dunstify -r "$msgId" --urgency=critical "Battery" "$(acpi | awk '{print substr($4, 1, length($4)-1)}') left"

