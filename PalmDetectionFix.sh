#!/bin/zsh
ID="$(xinput list | grep "Elan" | cut -d "=" -f 2 | cut -f 1)"

PROP='$(xinput list-props "$ID" | grep "Palm Detection" | cut -d "(" -f 2 | cut -d ")" -f 1)'

xinput set-prop "$ID" "$PROP" 5 5
