#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "../utils_brew.sh" \
    && . "../utils_npm.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Brew packages \n\n"

brew_tap "drud/ddev"
brew_install "ddev"                 "ddev"
brew_install "docker-compose"       "docker-compose"
brew_install "mkcert (certificat)"  "mkcert"
brew_install "nss"                  "nss"
brew_install "PHP 7.1"              "php@7.1"
brew_install "PHP 7.2"              "php@7.2"
brew_install "LazyDocker"           "lazydocker"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   npm\n\n"

install_npm_package "npm (self update)"     "npm"
#install_npm_package "!nstant-markdown-d"   "instant-markdown-d"
install_npm_package "gatsby-cli"            "gatsby-cli"
install_npm_package "eleventy"              "eleventy"
install_npm_package "netlify-cli"           "netlify-cli"
install_npm_package "cleaver"               "cleaver"
install_npm_package "gulp"                  "gulp"
#install_npm_package "parcel-bundler"       "parcel-bundler"