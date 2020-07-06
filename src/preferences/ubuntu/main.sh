#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if [[ $DISPLAY ]]; then

  # Privacy
  execute "gsettings set com.canonical.Unity.Lenses remote-content-search 'none'" \
    "Turn off 'Remote Search' so that search terms in Dash do not get sent over the internet"

  # UI / UX
  execute "gsettings set org.gnome.desktop.background picture-options 'stretched'" \
    "Set desktop background image options"

  execute "gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true" \
      "Set mouse natural scrolling"

  execute "gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true" \
      "Set touchpad natural scrolling"

  execute "gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 12'" \
      "Change font size"

fi
