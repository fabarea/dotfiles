#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "../utils_brew.sh" \
    && . "../utils_npm.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Brew common packages\n\n"

brew_tap "drud/ddev"
brew_install "ddev"                 "ddev"
brew_install "docker-compose"       "docker-compose"
brew_install "mkcert (certificat)"  "mkcert"
brew_install "nss"                  "nss"
brew_install "LazyDocker"           "lazydocker"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   npm common packages\n\n"

# Note! if it fails on macOS, run `nvm install --lts` beforehand
# This will not work below as nvm is a script / function
# Just make sure we have the latest LTS node version
#execute \
#    "nvm install --lts" \
#    "Install LTS node version"


#install_npm_package "npm (self update)"     "npm"
#install_npm_package "!nstant-markdown-d"   "instant-markdown-d"
#install_npm_package "Gatsby CLI"            "gatsby-cli"
#install_npm_package "Eleventy"              "eleventy"
install_npm_package "Netlify CLI"           "netlify-cli"
#install_npm_package "Cleaver"               "cleaver"
#install_npm_package "Marp"                  "@marp-team/marp-cli"
install_npm_package "Gulp"                  "gulp"
install_npm_package "Prettier"              "prettier"
install_npm_package "ESLint"                "eslint"
#install_npm_package "Vue CLI"               "@vue/cli"
install_npm_package "degit"                 "degit"
#install_npm_package "parcel-bundler"       "parcel-bundler"

# Todo install VS Code plugin like this
# code --install-extension dbaeumer.vscode-eslint
# code --install-extension esbenp.prettier-vscode
# code --install-extension hollowtree.vue-snippets
# code --install-extension octref.vetur
# code --install-extension skyapps.fish-vscode
# code --install-extension vscode-icons-team.vscode-icons