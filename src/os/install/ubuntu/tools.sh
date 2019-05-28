#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dev Tools\n\n"

install_package "Git" "git"
install_package "Tig" "tig"
install_package "ack" "ack"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

#print_in_purple "\n   tmux\n\n"

#install_package "tmux" "tmux"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Image Tools\n\n"

install_package "ImageMagick" "imagemagick"
