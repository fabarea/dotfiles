#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if [[ $DISPLAY ]]; then
  ./privacy.sh
  ./terminal.sh
  ./ui_and_ux.sh
fi
