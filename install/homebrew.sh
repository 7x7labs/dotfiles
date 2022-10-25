echo "[dotfiles] updating homebrew:"
brew update && brew upgrade

echo "[dotfiles] installing zsh:"
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install spaceship

echo "[dotfiles] installing utils:"
brew install htop
brew install gh
brew install overmind
brew install ssh-copy-id
brew install rbenv ruby-build
brew install tig
brew install tree
brew install wget
brew install z
