#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "../../utils_brew.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Brew packages\n\n"

brew_install "Git"                          "git"
brew_install "wget"                         "wget"
brew_install "ack"                          "ack"
brew_install "Tig"                          "tig"
brew_install "Midnight Commander"           "mc"
brew_install "htop"                         "htop"
brew_install "ShellCheck"                   "shellcheck"
brew_install "NVM - Node Version Manager"   "nvm"
#brew_install "PHP 7.3"                     "php@7.3"
brew_install "PHP latest stable"            "php"

#brew_install "GIMP" "lisanet-gimp" "caskroom/cask" "cask"
#brew_install "ImageAlpha" "imagealpha" "caskroom/cask" "cask"
#brew_install "ImageMagick" "imagemagick --with-webp"
#brew_install "ImageOptim" "imageoptim" "caskroom/cask" "cask"
#brew_install "LICEcap" "licecap" "caskroom/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Brew Cask packages\n\n"

brew_install "Chrome"               "google-chrome"         ""          "cask"
brew_install "Firefox"              "firefox"               ""          "cask"
brew_install "Brave"                "brave-browser"         ""          "cask"
brew_install "Bitwarden"            "bitwarden"             ""          "cask"
brew_install "Visual Studio Code"   "visual-studio-code"    ""          "cask"
brew_install "Authy"                "authy"                 ""          "cask"
brew_install "Spectacle"            "spectacle"             ""          "cask"
brew_install "Transmission"         "transmission"          ""          "cask"
brew_install "VLC"                  "vlc"                   ""          "cask"
brew_install "iTerm2"               "iterm2"                ""          "cask"
brew_install "Keybase"              "keybase"               ""          "cask"
brew_install "Sublime Text"         "sublime-text"          ""          "cask"
brew_install "Typora"               "typora"                ""          "cask"
brew_install "PHPStorm"             "phpstorm"              ""          "cask"
brew_install "WebStorm"             "webstorm"              ""          "cask"
brew_install "PyCharm"              "pycharm"               ""          "cask"
brew_install "DataGrip"             "datagrip"              ""          "cask"
brew_install "Mattermost"           "mattermost"            ""          "cask"
brew_install "Chromium"             "chromium"              ""          "cask"
brew_install "Telegram"             "telegram-desktop"      ""          "cask"
brew_install "WebTorrent"           "webtorrent"            ""          "cask"
brew_install "ProtonVPN"            "protonvpn"             ""          "cask"
brew_install "GPG Suite"            "gpg-suite"             ""          "cask"
brew_install "Dropbox"              "dropbox"               ""          "cask"
brew_install "Discord"              "discord"               ""          "cask"
brew_install "Skype"                "skype"                 ""          "cask"
brew_install "Boinc"                "boinc"                 ""          "cask"
brew_install "Karabiner"            "karabiner-elements"    ""          "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./../common.sh

print_in_purple "\n   Cleanup\n\n"
brew_cleanup
