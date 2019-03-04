#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

#brew_install "Android File Transfer" "android-file-transfer" "caskroom/cask" "cask"
#brew_install "eyeD3" "eye-d3"

if [[ !  -d "/Applications/Spectacle.app" ]];
then
    brew_install "Spectacle" "spectacle" "caskroom/cask" "cask"
fi

if [[ !  -d "/Applications/Transmission.app" ]];
then
    brew_install "Transmission" "transmission" "caskroom/cask" "cask"
fi

#brew_install "Unarchiver" "the-unarchiver" "caskroom/cask" "cask"

if [[ !  -d "/Applications/VLC.app" ]];
then
    brew_install "VLC" "vlc" "caskroom/cask" "cask"
fi
