#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if [[ $DISPLAY ]]; then
  install_package "GNOME Vim" "vim-gnome"
fi
