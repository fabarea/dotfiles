#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_symlinks() {

    declare -a FILES_TO_SYMLINK=(

        "files/shell/aliases/bash_aliases"
        "files/shell/autocomplete/$(get_os)/bash_autocomplete"
        "files/shell/bash_exports"
        "files/shell/bash_functions"
        "files/shell/bash_logout"
        "files/shell/bash_options"
        "files/shell/bash_profile"
        "files/shell/bash_prompt"
        "files/shell/bashrc"
        "files/shell/curlrc"
        "files/shell/inputrc"
        "files/shell/z.sh"

        "files/git/gitattributes"
        "files/git/gitconfig"
        "files/git/gitignore"
        "files/git/tigrc"

        "files/tmux/tmux.conf"

        "files/vim/vim"
        "files/vim/vimrc"
    )

    local i=""
    local sourceFile=""
    local targetFile=""
    local skipQuestions=false

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    skip_questions "$@" \
        && skipQuestions=true

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    for i in "${FILES_TO_SYMLINK[@]}"; do

        sourceFile="$(cd .. && pwd)/$i"
        targetFile="$HOME/.$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

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
    print_in_purple "\n • Create symbolic links\n\n"
    create_symlinks "$@"

    print_in_purple "\n • Create special symbolic for fish \n\n"

    sourceFile="$(cd .. && pwd)/files/fish"
    targetFile="$HOME/.config"
    ln -sf $sourceFile $targetFile
}

main "$@"
