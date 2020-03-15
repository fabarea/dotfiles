#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_symlinks() {

    declare -a FILES_TO_SYMLINK=(

        "files/bash/aliases/bash_aliases"
        "files/bash/autocomplete/$(get_os)/bash_autocomplete"
        "files/bash/bash_exports"
        "files/bash/bash_functions"
        "files/bash/bash_logout"
        "files/bash/bash_options"
        "files/bash/bash_profile"
        "files/bash/bash_prompt"
        "files/bash/bashrc"

        "files/zsh/zshrc"

        "files/curlrc"
        "files/inputrc"
        "files/npmrc"
        "files/z.sh"

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

    sourceFile="$(cd ../.. && pwd)/files/$(get_os)/config"
    targetFile="$HOME/.config"
    ln -sf $sourceFile $targetFile
}

main "$@"
