# [Fabien](https://github.com/fabarea)’s dotfiles

```
# Install everything
~/.dotfiles/install.sh

# Upgrade and clean up the installation
~/.dotfiles/upgrade.sh (todo!)

# Set default preferences
~/.dotfiles/preference.sh (todo!)
```

These are the base dotfiles that I start with when I set up a
new environment. For more specific local needs I use the `.local`
files described in the [`Local Settings`](#local-settings) section.

## Setup

To set up the `dotfiles` just run in the terminal:

```
# If not already installed on Ubuuntu
sudo apt install git

git clone https://github.com/fabarea/dotfiles.git .dotfiles
~/.dotfiles/install.sh
```

## Additionnal setup

-   change key binding
-   `sudo` without password for convenience sake
-   Configure SSH and UFW
-   adjust .gitconfig.local
-   adjust .bash.local
-   Import SSH keys
-   Import GPG keys

### Change Key bindings

```
# Tweak
Swap alt and ctrl

# Tilix
Paste command
Copy on select

# Global
switch program
```

### sudo without password for convenience sake

```
sudo visudo
fabien ALL=(ALL) NOPASSWD:ALL
```

### Configure SSH + UFW

```
sudo nano /etc/ssh/ssh_config

# Search and replace
PasswordAuthentication no

# Restart the service
sudo systemctl restart ssh

```

### adjust .gitconfig.local

```
nano ~/.gitconfig.local

[user]
	name = Fabien Udriot
	email = fabien@omic.ch
	date = YYYY
	signingkey = CB19DB9BAB632A27

[commit]
	gpgsign = true
```

### adjust .bash.local

```
nano ~/.bash.local

#!/bin/bash

export PATH="$PATH:$HOME/.composer/vendor/bin"
```

### Import ssh keys

```
# Import SSH key from Cloud Service... Copy / paste bakcup directory
# Make sure .ssh is initialized
ssh localhost

# Import keys into `.ssh` directory
mv ssh_2020.04.16/* .ssh
rmdir ssh_2020.04.16

# Fix permission
chmod +x ~/.ssh/agent.sh; chmod 700 ~/.ssh/id*
```

### Import GPG keys

```
# Import GGP from Cloud Service

gpg --import 'path/key.asc'
```

## TODO #1

Script the following action:

```
# VS Code settings and key-bindings

rm $HOME/.config/Code/User/keybindings.json
ln -s $HOME/.dotfiles/files/vs-code/ubuntu/keybindings.json  $HOME/.config/Code/User/
rm $HOME/.config/Code/User/settings.json
ln -s $HOME/.dotfiles/files/vs-code/ubuntu/settings.json  $HOME/.config/Code/User/


# Sublime 3

rm "$HOME/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap"
ln -s "$HOME/.dotfiles/files/sublime-text-3/ubuntu/Default (Linux).sublime-keymap"  $HOME/.config/sublime-text-3/Packages/User

# Atom ... todo


# PHPStorm

rm -rf $HOME/.PhpStorm2019.1/config/templates
ln -s $HOME/.dotfiles/files/phpstorm/templates $HOME/.PhpStorm2019.1/config

```

## TODO #2

* Rework upgrade script

```
~/.dotfiles/src/upgrade.sh
~/.dotfiles/src/preference.sh (create it and make it independant)

```
* symlink .zshrc on macOS
* symlink VS Code

```
ln -s ~/.dotfiles/files/vs-code/macos/keybindings.json ~/Library/Application\ Support/Code/User/
ln -s ~/.dotfiles/files/vs-code/macos/settings.json ~/Library/Application\ Support/Code/User/
```

## Acknowledgements

Inspiration and code was taken from many sources, including:

-   [Mathias Bynens'](https://github.com/mathiasbynens)
    [dotfiles](https://github.com/mathiasbynens/dotfiles)

## License

The code is available under the [MIT license](LICENSE.txt).