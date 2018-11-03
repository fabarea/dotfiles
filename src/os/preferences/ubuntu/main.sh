#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if command -v gsettings; then
  ./privacy.sh
  ./terminal.sh
  ./ui_and_ux.sh
fi
