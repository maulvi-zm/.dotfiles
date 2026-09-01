#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect to Production VPN
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

SECRET=$(security find-generic-password -a "Gojek VPN" -s "Gojek VPN Secret" -w)
OTP=$(oathtool --totp -b "$SECRET")

# Copy code to clipboard for quick pasting
echo -n "$OTP" | pbcopy

# Trigger VPN via macOS Shortcuts CLI
shortcuts run "Connect to Production VPN"

# Auto-type into the popup prompt after a brief pause
osascript -e "delay 1" \
    -e "tell application \"System Events\" to keystroke \"$OTP\"" \
    -e "tell application \"System Events\" to key code 36"
