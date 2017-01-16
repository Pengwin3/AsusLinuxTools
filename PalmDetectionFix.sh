#!/bin/zsh
ID="$(xinput list | grep "Elan" | cut -d '=' -f 2 | cut -f 1)"

#xinput set-prop "$ID" 351 1
#xinput set-prop "$ID" 352 5 5

PROP1="$(xinput list-props $ID | grep "Palm Detection" | head -n 1 | cut -d " " -f 4 | cut -d "(" -f 2 | cut -d ")" -f 1)"
PROP2="$(xinput list-props $ID | grep "Palm Dimensions" | head -n 1 | cut -d " " -f 4 | cut -d "(" -f 2 | cut -d ")" -f 1)"

xinput set-prop "$ID" "$PROP1" 1
xinput set-prop "$ID" "$PROP2" 5 5
