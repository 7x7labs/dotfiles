
if [[ $1 != "-y" ]]; then
  echo "This install script is destructive and may overwrite existing settings in your home directory."
  echo "If you're sure you'd like to run it, pass in the -y flag:"
  echo
  echo "  ./install.sh -y"
  echo
  exit 1
fi

echo "[dotfiles] configuring:"

echo "  . amazing print"
ln -sf ~/.dotfiles/.aprc ~/.aprc

echo "  . git"
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

echo "  . zsh"
ln -sf ~/.dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -sf ~/.dotfiles/zsh/zshenv.zsh ~/.zshenv
ln -sf ~/.dotfiles/zsh/zprofile.zsh ~/.zprofile
if [ ! -e ~/.zlocal.zsh ]; then
  echo 'prompt spaceship' > ~/.zlocal.zsh
fi

echo
echo "[dotfiles] installation complete."
echo
``