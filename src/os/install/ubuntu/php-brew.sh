#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r PHP_DIRECTORY="/home/linuxbrew/.linuxbrew/etc/php/7.1"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_php_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
export PATH=\"/home/linuxbrew/.linuxbrew/opt/php@7.1/bin:\$PATH\"
export PATH=\"/home/linuxbrew/.linuxbrew/opt/php@7.1/sbin:\$PATH\"
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "php (update $LOCAL_SHELL_CONFIG_FILE)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   php via brew\n\n"

    brew_install "PHP 7.1" "php@7.1"

    # add_php_configs
    # if [ ! -d "$PHP_DIRECTORY" ]; then
    #     install_php
    # else
    #     update_php
    # fi
}

main