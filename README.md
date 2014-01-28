# 7x7 Labs dotfiles

Geared towards a Rails development environment.  Prerequisites: OSX, homebrew, zsh, git and rbenv.

## Install

```sh
git clone --recursive git@github.com:7x7labs/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install/symlinks.sh
```

If you'd like to further customize zsh, you can place machine specific settings in `~/.zlocal`.

## Issues

* `.gitconfig` has hardcoded user names and emails.
* `rbenv init` sometimes causes `$path` order to be rewritten, so `$path` is hardcoded for now.

## Thanks

[Ryan Bates](https://github.com/ryanb/dotfiles), [Zach Holman](https://github.com/holman/dotfiles), and [Sorin Ionescu](https://github.com/sorin-ionescu/prezto) for providing great ideas on setting up dotfiles and configuring zsh.
