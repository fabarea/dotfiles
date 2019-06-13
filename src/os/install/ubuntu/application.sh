#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Applications\n\n"

install_package "VPN IPSec / L2TP"          "network-manager-l2tp"
install_package "VPN Gnome Preference"      "network-manager-l2tp-gnome"
install_package "GNOME Shell integration"   "chrome-gnome-shell"
install_package "Transmission"              "transmission"
install_package "VLC"                       "vlc"

snap_install    "VSCode"        "code"          "--classic"
snap_install    "Sublime Text"  "sublime-text"  "--classic"
snap_install    "PHPStorm"      "phpstorm"      "--classic"
snap_install    "Mattermost"    "mattermost-desktop"