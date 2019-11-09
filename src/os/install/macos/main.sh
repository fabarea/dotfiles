#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh
./bash.sh

./../nvm.sh
./../common.sh
./casks.sh
#./compression_tools.sh
./image_tools.sh
./misc.sh
./php.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Brew packages\n\n"

brew_install "Git"                  "git"
brew_install "Tig"                  "tig"
brew_install "Midnight Commander"   "mc"
brew_install "GPG"                  "gpg"
brew_install "ShellCheck"           "shellcheck"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Cleanup\n\n"
brew_cleanup
