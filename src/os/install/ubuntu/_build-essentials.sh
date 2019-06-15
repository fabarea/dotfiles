#!/bin/bash

# FILE IS NOT USED!
# @todo see if we should use phpenv or simply remove this file

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Build Essentials\n\n"

# Install tools for compiling/building software from source.
#install_package "Libxml2" "libxml2"
#install_package "Libxml2-dev" "libxml2-dev"
#install_package "libcurl4-openssl-dev" "libcurl4-openssl-dev"
#install_package "libmcrypt-dev" "libmcrypt-dev"
#install_package "libreadline-dev" "libreadline-dev"
#install_package "libxslt1-dev" "libxslt1-dev"
#install_package "libssl-dev" "libssl-dev"
#install_package "libbz2-dev" "libbz2-dev"
#install_package "libjpeg-dev" "libjpeg-dev"
#install_package "libpng-dev" "libpng-dev"
#install_package "libtidy-dev" "libtidy-dev"
#install_package "bison" "bison"

# GnuPG archive keys of the Debian archive.

# Software which is not included by default
# in Ubuntu due to legal or copyright reasons.
#install_package "Ubuntu Restricted Extras" "ubuntu-restricted-extras"
