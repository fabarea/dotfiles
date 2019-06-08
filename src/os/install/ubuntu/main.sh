#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
#upgrade

./build-essentials.sh
#./../nvm.sh

./tools.sh
#./python.sh
./misc.sh
#./../npm.sh

if [[ $DISPLAY ]]; then
    ./application.sh
fi

./cleanup.sh