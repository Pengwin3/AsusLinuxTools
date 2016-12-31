#!/bin/zsh
ID="$(xinput list | grep "Elan" | cut -d '=' -f 2 | cut -f 1)"
echo "$ID"
xinput set-prop "$ID" 351 1
xinput set-prop "$ID" 352 5 5
