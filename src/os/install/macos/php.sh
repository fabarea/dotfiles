#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   PHP\n\n"

brew_install "PHP 7.1" "php@7.1"
brew_install "PHP 7.2" "php@7.2"
brew_install "PHP latest stable" "php"

# pecl install xdebug

# Change in php.ini
#zend_extension="/usr/local/Cellar/php@7.1/7.1.16/pecl/20160303/xdebug.so"
#xdebug.max_nesting_level=512

# Execute:
# `ls -l /usr/local/etc/php/` to see available PHP versions
# `php --ini` to see the available conf.d paths
create_symlinks() {

    declare -a FILES_TO_SYMLINK=(

        "/usr/local/etc/php/5.6/conf.d"
        "/usr/local/etc/php/7.1/conf.d"
        "/usr/local/etc/php/7.3/conf.d"
        "/usr/local/etc/php/7.3/conf.d"
    )

    local preferenceFile="user.ini"
    local i=""
    local sourceFile=""
    local targetFile=""
    local skipQuestions=false

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    skip_questions "$@" \
        && skipQuestions=true

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    for i in "${FILES_TO_SYMLINK[@]}"; do

        file="$(cd .. && pwd)/../../files/php/$preferenceFile"
        sourceFile="`dir_resolve \"$file\"`"
        targetFile="$i/$preferenceFile"

        if [ ! -e "$targetFile" ] || $skipQuestions; then

            execute \
                "ln -fs $sourceFile $targetFile" \
                "$targetFile → $sourceFile"

        elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
            print_success "$targetFile → $sourceFile"
        else

            if ! $skipQuestions; then

                ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
                if answer_is_yes; then

                    rm -rf "$targetFile"

                    execute \
                        "ln -fs $sourceFile $targetFile" \
                        "$targetFile → $sourceFile"

                else
                    print_error "$targetFile → $sourceFile"
                fi

            fi

        fi

    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n • Install PHP preferences\n\n"
    create_symlinks "$@"
}

# Resolve relative path to absolute path
dir_resolve() {
  local dir=`dirname "$1"`
  local file=`basename "$1"`
  pushd "$dir" &>/dev/null || return $? # On error, return error code
  echo "`pwd -P`/$file" # output full, link-resolved path with filename
  popd &> /dev/null
}

main
