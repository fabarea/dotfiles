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


## Manuel steps

* todo: atom with followin package

```
    apm formatter
    apm expand-region
```

* todo: add fish configuration
* import ssh keys

```
    cd my/ssh
    mv ssh ~/.ssh
    chmod 600 ~/.ssh/*
```

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

* Import gpg keys

```
    cd my/keys
    gpg --import my-secret-keyring.gpg
    gpg --import-options import-local-sigs my-public-keyring.gpg
```

## Customize

### Local Settings

The `dotfiles` can be easily extended to suit additional local
requirements by using the following files:

* `~/.bash.local`
* `~/.gitconfig.local`

## Update

To update the dotfiles you can either run the [`setup`
script](src/os/setup.sh) or, if you want to just update one particular
part, run the appropriate [`os` script](src/os).

### Forks

If you decide to fork this project, don't forget to substitute my
username with your own in the [`setup` snippets](#setup) and [in the
`setup` script](https://github.com/fabarea/dotfiles/blob/1503cf23ef23f6e31342b140bcd246625160b94f/src/os/setup.sh#L3).

## Acknowledgements

Inspiration and code was taken from many sources, including:

* [Mathias Bynens'](https://github.com/mathiasbynens)
  [dotfiles](https://github.com/mathiasbynens/dotfiles)

## License

The code is available under the [MIT license](LICENSE.txt).
