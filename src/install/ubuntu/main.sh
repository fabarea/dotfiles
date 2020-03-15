#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
#upgrade

./../nvm.sh
./../common.sh

./cleanup.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Survival kit!\n\n"

install_package "Build Essential"           "build-essential"
install_package "GnuPG archive keys"        "debian-archive-keyring"
install_package "Git"                       "git"
install_package "Tig"                       "tig"
install_package "ack"                       "ack"
install_package "fonts-powerline"           "fonts-powerline" # used for fish
install_package "fish"                      "fish"
# install_package "Linuxbrew"                 "linuxbrew-wrapper" -- configure to be installed in $HOME
install_package "cURL"                      "curl"
install_package "Midnight Commander"        "mc"
install_package "AG - better than Ack"      "silversearcher-ag"
install_package "ShellCheck"                "shellcheck"
install_package "xclip (CLI Clipboard)"     "xclip"
install_package "tmux"                      "tmux"
install_package "ImageMagick"               "imagemagick"
install_package "Flatpak"                   "flatpak"
install_package "gThumb"                    "gthumb"
install_package "Nautilus Image Converter"  "nautilus-image-converter"
install_package "MariaDB client"            "mariadb-client"

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
    install_package "PHP CLI"                   "php-cli"
    install_package "Composer (PHP)"            "composer"
    install_package "pip (python3)"             "python3-pip"

    # Snap instllation
    snap_install    "VSCode"                "code"                  "--classic"
    snap_install    "Atom"                  "atom"                  "--classic"
    snap_install    "Sublime Text"          "sublime-text"          "--classic"
    snap_install    "PHPStorm"              "phpstorm"              "--classic"
    snap_install    "WebStorm"              "webstorm"              "--classic"
    snap_install    "PyCharm"               "pycharm-professionnel" "--classic"
    snap_install    "DataGrip"              "datagrip"              "--classic"
    snap_install    "Kubernetes Client"     "kubectl"               "--classic"
    # snap_install    "Kubernetes Cluster"    "kubeadm"               "--classic"
    # snap_install    "Microk8s"              "microk8s"              "--classic"
    snap_install    "Helm"                  "helm"                  "--classic"
    snap_install    "GCloud"                "google-cloud-sdk"      "--classic"
    snap_install    "Mattermost"            "mattermost-desktop"
    snap_install    "Chromium"              "chromium"
    snap_install    "Bitwarden"             "bitwarden"
    snap_install    "Signal"                "signal-desktop"
    snap_install    "Simple Server"         "serve"
    snap_install    "Epiphany"              "epiphany"
    snap_install    "Inkscape"              "inkscape"
    snap_install    "Telegram"              "telegram-desktop"
fi

# TODO: decide whether to install these packages
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install flathub org.onlyoffice.desktopeditors
# flatpak install flathub com.getpostman.Postman

# todo install typora
# As stated: https://www.typora.io/#linux
# wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# sudo add-apt-repository 'deb https://typora.io/linux ./'
# sudo apt-get update
# sudo apt-get install typora

# pip packages to install
# pip install mkdocs
# pip install mkdocs-material

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

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Cleanup\n\n"
autoremove
