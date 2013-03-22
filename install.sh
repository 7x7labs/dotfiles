
if [[ $1 != "-y" ]]; then
  echo "This install script is destructive and may overwrite existing settings in your home directory."
  echo "If you're sure you'd like to run it, pass in the -y flag:"
  echo
  echo "  ./install.sh -y"
  echo
  exit 1
fi

echo "[dotfiles] configuring:"

echo "  . awesome print"
ln -sf ~/.dotfiles/aprc ~/.aprc

echo "  . bundler"
mkdir -p ~/.bundle
ln -sf ~/.dotfiles/bundler ~/.bundle/config

echo "  . rubygems"
ln -sf ~/.dotfiles/gemrc ~/.gemrc

echo "  . git"
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

echo "  . irb"
ln -sf ~/.dotfiles/irbrc ~/.irbrc

echo "  . nano"
ln -sf ~/.dotfiles/nanorc ~/.nanorc

echo "  . tig"
ln -sf ~/.dotfiles/tigrc ~/.tigrc

echo "  . zsh"
ln -sf ~/.dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -sf ~/.dotfiles/zsh/zshenv.zsh ~/.zshenv
if [ ! -e ~/.zlocal ]; then
  echo 'prompt 7x7 r' > ~/.zlocal
fi

echo " -> zsh-completions"
brew install zsh-completions
echo
echo "[dotfiles] installation complete."
echo
