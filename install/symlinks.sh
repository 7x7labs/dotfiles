
if [[ $1 != "-y" ]]; then
  echo "This install script is destructive and may overwrite existing settings in your home directory."
  echo "If you're sure you'd like to run it, pass in the -y flag:"
  echo
  echo "  ./symlinks.sh -y"
  echo
  exit 1
fi

echo "[dotfiles] configuring:"

echo "  . amazing print"
ln -sf ~/.dotfiles/config/aprc ~/.config/aprc

echo "  . git"
mkdir -p $HOME/.config/git
ln -sf ~/.dotfiles/config/.gitconfig ~/.config/git/config
ln -sf ~/.dotfiles/config/.gitignore ~/.config/git/ignore
git config --global core.excludesFile ~/.config/git/ignore

echo "  . starship"
ln -sf ~/.dotfiles/config/starship.toml ~/.config/starship.toml

echo "  . zsh"
mkdir -p $HOME/.local/state/zsh
mkdir -p $HOME/.cache/zsh
ln -sf ~/.dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -sf ~/.dotfiles/zsh/zshenv.zsh ~/.zshenv
ln -sf ~/.dotfiles/zsh/zprofile.zsh ~/.zprofile
if [ ! -e ~/.zlogin ]; then
  echo 'eval "$(starship init zsh)"' > ~/.zlogin
fi

echo
echo "[dotfiles] installation complete."
echo
