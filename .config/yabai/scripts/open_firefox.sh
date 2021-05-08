#!/usr/bin/env bash

# Detects if "Firefox Nightly" is running
if ! pgrep -f "Firefox Nightly" > /dev/null; then
    open -a "/Applications/Firefox Nightly.app"
else
    # Create a new window
    if ! osascript $HOME/.config/yabai/scripts/firefox.applescript > /dev/null; then
        # Get pids for any app with "Firefox Nightly" and kill
        for i in $(pgrep -f "iTerm"); do kill -15 "$i"; done
        open  -a "/Applications/Firefox Nightly.app"
    fi
fi
