#!/bin/zsh
ID="$(xinput list | grep "Elan" | cut -d "=" -f 2 | cut -f 1)"

PROP="$(xinput list-props $ID | grep "Scrolling Distance" | head -n 1 | cut -d " " -f 4 | cut -d "(" -f 2 | cut -d ")" -f 1)"

	xinput set-prop "$ID" "$PROP" -75 -75
