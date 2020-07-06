#!/usr/bin/env bash
set -eu

# Usage in Crontab to be executed
# 0 10 * * * /Users/fabien/.dotfiles/scripts/tm-exclude-files.sh

# This simple bash script is aimed at excluding some development specific directories.
# https://gist.github.com/peterdemartini/4c918635208943e7a042ff5ffa789fc1

# Compute relative path, will be /Users/[username]
HOME_DIR="$(cd "$(dirname "$0")/../.." && pwd -P)"

echo "Excluding some big directories from Time Machine..."
echo

# Default exclusion
EXCLUDED_DIRECTORIES=(
    ".composer"
    ".pcloud"
    ".nvm"
    ".oh-my-zsh"
    ".dartServer"
    ".android"
    ".dropbox"
    ".gradle"
    ".pub-cache"
    ".cache"
    "VM"
)

for EXCLUDED_DIRECTORY in "${EXCLUDED_DIRECTORIES[@]}"; do
    tmutil addexclusion ${HOME_DIR}/${EXCLUDED_DIRECTORY}
    tmutil isexcluded ${HOME_DIR}/${EXCLUDED_DIRECTORY}
done

echo
echo "Excluding development directories from Time Machine..."
echo

EXCLUDED_DEV_DIRECTORIES=( "env" "node_modules" "vendor" "venv" )


for EXCLUDED_DIRECTORY in "${EXCLUDED_DEV_DIRECTORIES[@]}"; do
    find ${HOME_DIR}/Work -maxdepth 3 -type d -name ${EXCLUDED_DIRECTORY} -prune
    find ${HOME_DIR}/Work -maxdepth 3 -type d -name ${EXCLUDED_DIRECTORY} -prune -exec tmutil addexclusion {} \;
done

# List all excluded files with default ones from macOS (cache, etc..)
# mdfind "com_apple_backup_excludeItem = 'com.apple.backupd'"
