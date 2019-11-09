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

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if [[ !  -d "/Applications/Brave Browser.app" ]];
then
    printf "\n"
    brew_install "Brave" "brave-browser" "caskroom/cask" "cask"
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if [[ !  -d "/Applications/Bitwarden.app" ]];
then
    printf "\n"
    brew_install "Bitwarde" "bitwarden" "caskroom/cask" "cask"
fi

brew_install "Visual Studio Code"   "visual-studio-code"    "caskroom/cask" "cask"
brew_install "Authy"                "authy"                 "caskroom/cask" "cask"
