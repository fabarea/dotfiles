#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Survival kit!\n\n"

install_package "Build Essential"       "build-essential"
install_package "GnuPG archive keys"    "debian-archive-keyring"
install_package "Git"                   "git"
install_package "Tig"                   "tig"
install_package "ack"                   "ack"
install_package "fonts-powerline"       "fonts-powerline" # used for fish
install_package "fish"                  "fish"
install_package "Linuxbrew"             "linuxbrew-wrapper"
install_package "cURL"                  "curl"
install_package "Midnight Commander"    "mc"
install_package "AG - better than Ack"  "silversearcher-ag"
install_package "ShellCheck"            "shellcheck"
install_package "xclip (CLI Clipboard)" "xclip"
install_package "tmux"                  "tmux"
install_package "ImageMagick"           "imagemagick"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ansible\n\n"

add_ppa "ansible/ansible"
install_package "software-properties-common"    "software-properties-common"
install_package "Ansible"                       "ansible"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Docker\n\n"

# @see https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
#install_package "Docker" "docker-ce"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Only if we have a graphical environment
if [[ $DISPLAY ]]; then

    print_in_purple "\n   Applications\n\n"

    install_package "VPN IPSec / L2TP"          "network-manager-l2tp"
    install_package "VPN Gnome Preference"      "network-manager-l2tp-gnome"
    install_package "GNOME Shell integration"   "chrome-gnome-shell"
    install_package "GNOME Tweak"               "gnome-tweak-tool"
    install_package "Transmission"              "transmission"
    install_package "VLC"                       "vlc"
    install_package "Folder Color (Nautilus)"   "folder-color"
    install_package "LibreOffice preview"       "unoconv"
    install_package "Shutter (screenshot)"      "shutter"
    install_package "Virtualbox"                "virtualbox"
    #install_package "Microsoft TrueType fonts"  "msttcorefonts"

    snap_install    "VSCode"            "code"          "--classic"
    snap_install    "Atom"              "atom"          "--classic"
    snap_install    "Sublime Text"      "sublime-text"  "--classic"
    snap_install    "PHPStorm"          "phpstorm"      "--classic"
    snap_install    "DataGrip"          "datagrip"      "--classic"
    snap_install    "Mattermost"        "mattermost-desktop"
    snap_install    "Chromium"          "chromium"
    snap_install    "Bitwarden"         "bitwarden"
    snap_install    "Signal"            "signal-desktop"
    snap_install    "Simple Server"     "serve"
    snap_install    "Epiphany"          "epiphany"
    snap_install    "Inkscape"          "inkscape"
fi

# todo
#composer global require "squizlabs/php_codesniffer=*"
#composer global require "phing/phing"

# See what is necessary...
# $ composer global require phpunit/phpunit
# $ composer global require phpunit/dbunit
# $ composer global require phing/phing
# $ composer global require phpdocumentor/phpdocumentor
# $ composer global require sebastian/phpcpd
# $ composer global require phploc/phploc
# $ composer global require phpmd/phpmd

# To update globally
# composer global update