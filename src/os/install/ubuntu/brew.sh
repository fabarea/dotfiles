#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Brew packages \n\n"

brew_tap "drud/ddev"
brew_install "ddev" "ddev"
brew_install "docker-compose" "docker-compose"
brew_install "mkcert (certificat)" "mkcert"
brew_install "nss" "nss"