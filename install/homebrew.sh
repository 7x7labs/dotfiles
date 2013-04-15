echo "[dotfiles] updating homebrew:"
brew update && brew upgrade

echo "[dotfiles] installing zsh:"
brew install zsh
brew install zsh-completions

echo "[dotfiles] installing utils:"
brew install fasd
brew install htop
brew install hub
brew install ssh-copy-id
brew install tig
brew install tree
brew install wget
