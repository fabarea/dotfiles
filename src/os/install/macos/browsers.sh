#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if [[ !  -d "/Applications/Google Chrome.app" ]];
then
    printf "\n"
    brew_install "Chrome" "google-chrome" "caskroom/cask" "cask"
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


if [[ !  -d "/Applications/Firefox.app" ]];
then
    printf "\n"
    brew_install "Firefox" "firefox" "caskroom/cask" "cask"
fi
