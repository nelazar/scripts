#!/usr/bin/bash

# Set theme, font and system settings
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.Weather locations "[<(uint32 2, <('Washington', 'KDCA', true, [(0.67803131976116615, -1.3444998506811625)], [(0.67884776733195662, -1.344538230471414)])>)>]"
gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
gsettings set org.gnome.desktop.interface font-hinting 'slight'
gsettings set org.gnome.desktop.interface font-name 'Source Code Pro 11'
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'
gsettings set org.gnome.desktop.peripherals.touchpad speed 0.26

# Open web pages for extensions
xdg-open https://extensions.gnome.org/extension/2/move-clock/
xdg-open https://extensions.gnome.org/extension/4944/app-icons-taskbar/
xdg-open https://extensions.gnome.org/extension/3843/just-perfection/