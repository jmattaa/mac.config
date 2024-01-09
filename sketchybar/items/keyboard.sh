#!/bin/bash

sketchybar --add item keyboard left \
           --set keyboard label.color=$ACCENT_COLOR \
                       script="$PLUGIN_DIR/keyboard.sh"
