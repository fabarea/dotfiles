#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   HTTP Server\n\n"

brew_install "PHP 7.1" "php@7.1"
brew_install "PHP 7.2" "php@7.2"
brew_install "PHP latest stable" "php"

# pecl install xdebug

# Change in php.ini
#zend_extension="/usr/local/Cellar/php@7.1/7.1.16/pecl/20160303/xdebug.so"
#xdebug.max_nesting_level=512
