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
./browsers.sh
#./compression_tools.sh
./image_tools.sh
./http_server.sh
./misc.sh
./misc_tools.sh
./php.sh
./sql_server.sh
#./tmux.sh
./video_tools.sh
#./web_font_tools.sh


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Git\n\n"

brew_install "Git"                  "git"
brew_install "Tig"                  "tig"
brew_install "Midnight Commander"   "mc"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   GPG\n\n"

brew_install "GPG" "gpg"