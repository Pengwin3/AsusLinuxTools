#!/bin/zsh
# Sets device flag to pulse
# Fixes compatibility issues between
# alsa and pulseaudio

amixer -D pulse sset Master toggle -q
