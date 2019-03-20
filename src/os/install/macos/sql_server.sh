#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   SQL Server\n\n"

brew_install "MySQL" "mariadb"
# see if we require that
# Fix mysql root password
# mysqladmin -u root password root

# Fix SequelPro login for MySQL >= 8
#echo ~/.my.conf
#[mysqld] \
#default-authentication-plugin=mysql_native_password
# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
