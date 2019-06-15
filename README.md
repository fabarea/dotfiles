# [Fabien](https://github.com/fabarea)’s dotfiles

```
# Install everything
~/.dotfiles/src/os/setup.sh

# Upgrade and clean up the installation
~/.dotfiles/src/os/upgrade.sh
```

These are the base dotfiles that I start with when I set up a
new environment. For more specific local needs I use the `.local`
files described in the [`Local Settings`](#local-settings) section.

## Setup

To set up the `dotfiles` just run the appropriate snippet in the
terminal:

| OS | Snippet |
|:---|:---|
| `macOS` | `bash -c "$(curl -LsS https://raw.github.com/fabarea/dotfiles/master/src/os/setup.sh)"` |
| `Ubuntu` | `bash -c "$(wget -qO - https://raw.github.com/fabarea/dotfiles/master/src/os/setup.sh)"` |


## Manual steps

* Import ssh keys
* Import gpg keys
* adjust .gitconfig.local by adding

```
[user]
	name = Fabien Udriot
	email = fabien@omic.ch
	date = YYYY
	signingkey = CB19DB9BAB632A27

[commit]
	gpgsign = true
```

## Customize

### Local Settings

The `dotfiles` can be easily extended to suit additional local
requirements by using the following files:

* `~/.gitconfig.local`
* `~/.bash.local`

As example
```
#!/bin/bash

export PATH="$PATH:$HOME/.composer/vendor/bin"
```

## Update

To update the dotfiles you can either run the [`setup`
script](src/os/setup.sh) or, if you want to just update one particular
part, run the appropriate [`os` script](src/os).

## Acknowledgements

Inspiration and code was taken from many sources, including:

* [Mathias Bynens'](https://github.com/mathiasbynens)
  [dotfiles](https://github.com/mathiasbynens/dotfiles)

## License

The code is available under the [MIT license](LICENSE.txt).