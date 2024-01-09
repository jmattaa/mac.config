#!/bin/bash

layout="$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist \
    AppleSelectedInputSources | 
    grep "KeyboardLayout" | 
    awk '/KeyboardLayout Name/ {print $NF}' | tr -d ';'
)"

sketchybar --set $NAME label=$layout
