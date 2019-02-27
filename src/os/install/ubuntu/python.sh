#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"


declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r PYTHON_DIRECTORY="$HOME/.pyenv"
declare -r PYTHON_GIT_REPO_URL="https://github.com/pyenv/pyenv.git"
declare -r PYTHON3_VERSION="anaconda3-5.3.0" #3.7.1
declare -r PYTHON2_VERSION="anaconda2-5.3.0" #2.7.15

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_python_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# PYTHON Version Manager

export PYENV_ROOT=\"\$HOME/.pyenv\"
export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
if command -v pyenv 1>/dev/null 2>&1; then
  eval \"\$(pyenv init -)\"
fi'
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "python (update $LOCAL_SHELL_CONFIG_FILE)"
}

install_latest_stable_python() {

    # Install the latest stable version of PYTHON
    # (this will also set it as the default).
    # pyenv install --list
    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && $HOME/.pyenv/bin/pyenv install $PYTHON2_VERSION --skip-existing" \
        "python (install $PYTHON2_VERSION)"

        execute \
            ". $LOCAL_SHELL_CONFIG_FILE \
                && $HOME/.pyenv/bin/pyenv install $PYTHON3_VERSION --skip-existing" \
            "python (install latest $PYTHON3_VERSION)"

        execute \
            ". $LOCAL_SHELL_CONFIG_FILE \
                && $HOME/.pyenv/bin/pyenv global $PYTHON2_VERSION \
                && $HOME/.pyenv/bin/pyenv rehash" \
            "python (activate $PYTHON2_VERSION)"

}

install_python() {

    # Install `python` and add the necessary
    # configs in the local shell config file.

    execute \
        "git clone --quiet $PYTHON_GIT_REPO_URL $PYTHON_DIRECTORY" \
        "python (install PYTHON mananager)"

    add_python_configs
}

update_python() {

    execute \
        "cd $PYTHON_DIRECTORY \
            && git pull" \
        "Python manager (upgrade)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   python\n\n"

    if [ ! -d "$PYTHON_DIRECTORY" ]; then
        install_python
    else
        update_python
    fi

    # Compilation returns an error... Replacing by package
    install_latest_stable_python
}

main
