# git clone --recursive git://github.com/billmers/dotfiles.git ~/.dotfiles

# awesome print
ln -sf ~/.dotfiles/aprc ~/.aprc

# bundler
mkdir -p ~/.bundle
ln -sf ~/.dotfiles/bundler ~/.bundle/config

# rubygems
ln -sf ~/.dotfiles/gemrc ~/.gemrc

# git
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

# irb
ln -sf ~/.dotfiles/irbrc ~/.irbrc

# qwandry
mkdir -p ~/.qwandry
ln -sf ~/.dotfiles/qwandry ~/.qwandry/init.rb

# tig
ln -sf ~/.dotfiles/tigrc ~/.tigrc

# zsh
ln -sf ~/.dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -sf ~/.dotfiles/zsh/zshenv.zsh ~/.zshenv
brew install zsh-completions
