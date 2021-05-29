#!/usr/bin/env bash

set -e

readonly KEYS=(
    "/org/gnome/settings-daemon/plugins/media-keys/screensaver"
    "/org/gnome/settings-daemon/plugins/media-keys/terminal"
    "/org/gnome/desktop/wm/keybindings/toggle-shaded"
    "/org/gnome/desktop/wm/keybindings/begin-move"
    "/org/gnome/desktop/wm/keybindings/begin-resize"
    "/org/gnome/desktop/wm/keybindings/panel-main-menu"
    "/org/gnome/desktop/wm/keybindings/switch-to-workspace-down"
    "/org/gnome/desktop/wm/keybindings/switch-to-workspace-up"
    "/org/gnome/desktop/wm/keybindings/switch-to-workspace-left"
    "/org/gnome/desktop/wm/keybindings/switch-to-workspace-right"
    "/org/gnome/desktop/wm/keybindings/move-to-workspace-down"
    "/org/gnome/desktop/wm/keybindings/move-to-workspace-up"
    # To disable resetting a value, just comment out the line
)
readonly DISABLED_VALUE="['']"

for key in "${KEYS[@]}"; do
    dconf write "$key" "$DISABLED_VALUE"
done
