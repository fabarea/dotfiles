#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade


./build-essentials.sh
./../nvm.sh

./git.sh
./database.sh
./php.sh
./python.sh
./image_tools.sh
./application.sh
./misc.sh
./../npm.sh
./tmux.sh
# ./../vim.sh
./cleanup.sh
