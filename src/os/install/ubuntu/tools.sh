#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

install_package "Git" "git"
install_package "Tig" "tig"
install_package "ack" "ack"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Image Tools\n\n"

install_package "ImageMagick" "imagemagick"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Production Tools\n\n"

install_package "GNOME Shell integration" "chrome-gnome-shell"
install_package "tmux" "tmux"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ansible\n\n"

add_ppa "ansible/ansible"
install_package "software-properties-common" "software-properties-common"
install_package "Ansible" "ansible"
