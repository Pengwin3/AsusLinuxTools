#!/bin/zsh
ID="$(xinput list | grep "Elan" | cut -d "=" -f 2 | cut -f 1)"
echo "$ID"
PROP="$(xinput list-props 13 | grep "Scrolling Distance" | head -n 1 | cut -d " " -f 4 | cut -d "(" -f 2 | cut -d ")" -f 1)"
echo "$PROP"
xinput set-prop "$ID" "$PROP" -75 -75
