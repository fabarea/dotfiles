#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Build Essentials\n\n"

# Install tools for compiling/building software from source.
install_package "Build Essential" "build-essential"
install_package "Libxml2 is the XML C parser and toolkit developed for the Gnome project" "libxml2"
install_package "Libxml2 dev" "libxml2-dev"
install_package "libcurl4-openssl-dev" "libcurl4-openssl-dev"
install_package "libmcrypt-dev - The companion to MCrypt is Libmcrypt, which contains the actual encryption functions." "libmcrypt-dev"
install_package "libreadline-dev - The GNU Readline library provides functions that allow users to edit command lines as they are typed in." "libreadline-dev"
install_package "libxslt1-dev - Libxslt is the XSLT C library developed for the GNOME project" "libxslt1-dev"
#install_package "libxslt1-dev" "pkg-config"
install_package "libssl-dev - libssl is the portion of OpenSSL which supports TLS." "libssl-dev"
#install_package "libsslcommon2-dev" "libsslcommon2-dev"
install_package "libbz2-dev - BZip2" "libbz2-dev"
install_package "libjpeg-dev - Libjpeg is a widely used C library for reading and writing JPEG image files" "libjpeg-dev"
install_package "libpng-dev - libpng is the official PNG reference library" "libpng-dev"
install_package "libtidy-dev - libtidy is the library version of HTML Tidy" "libtidy-dev"
install_package "bison -  Bison is a general-purpose parser generator that converts an annotated context-free grammar into a deterministic LR" "bison"

# GnuPG archive keys of the Debian archive.
install_package "GnuPG archive keys" "debian-archive-keyring"

# Software which is not included by default
# in Ubuntu due to legal or copyright reasons.
#install_package "Ubuntu Restricted Extras" "ubuntu-restricted-extras"
