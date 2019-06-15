#!/bin/bash

# FILE IS NOT USED!
# @todo see if we should use phpenv or simply remove this file
cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"


declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r PHP_DIRECTORY="$HOME/.phpenv"
declare -r PHP_GIT_REPO_URL="https://github.com/phpenv/phpenv.git"
declare -r PHP_BUILD_GIT_REPO_URL="https://github.com/php-build/php-build.git"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_php_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# PHP Version Manager

export PATH=\"\$HOME/.phpenv/bin:\$PATH\"
eval \"\$(phpenv init -)\"
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "php (update $LOCAL_SHELL_CONFIG_FILE)"
}

install_latest_stable_php() {

    # Install the latest stable version of PHP
    # (this will also set it as the default).

    # PHP version as of this writing
    # @see php.net/downloads.php
    # 7.2.10
    # 7.1.26
    # 7.0.31
    # 5.6.37
    # To consult all PHP versions:
    # phpenv versions --list

    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && $HOME/.phpenv/bin/phpenv install 7.1.26 \
            && $HOME/.phpenv/bin/phpenv rehash" \
        "php (install latest PHP)"
}

install_php() {

    # Install `php` and add the necessary
    # configs in the local shell config file.

    execute \
        "git clone --quiet $PHP_GIT_REPO_URL $PHP_DIRECTORY" \
        "php (install PHP mananager)"

    execute \
        "git clone --quiet $PHP_BUILD_GIT_REPO_URL $PHP_DIRECTORY/plugins/php-build" \
        "php (install PHP manager build plugin)"

    add_php_configs
}

update_php() {

    execute \
        "cd $PHP_DIRECTORY \
            && git pull" \
        "PHP manager (upgrade)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   php\n\n"

    if [ ! -d "$PHP_DIRECTORY" ]; then
        install_php
    else
        update_php
    fi

    # Compilation returns an error... Replacing by package
    install_latest_stable_php
    
    #install_package "PHP system installed from APT" "php"
    ##install_package "Pecl system installed from APT" "php-pear"
    #install_package "php-mbstring from APT" "php-mbstring"
    #install_package "php-intl from APT" "php-intl"
    #install_package "Composer" "composer"
        
}

main