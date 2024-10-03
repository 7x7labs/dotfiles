echo "[dotfiles] updating homebrew:"
brew update && brew upgrade

echo "[dotfiles] installing zsh:"
brew install zsh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install starship

echo "[dotfiles] installing utils:"
brew install eza
brew install fzf
brew install gh
brew install htop
brew install mise
brew install ssh-copy-id
brew install tig
brew install tree
brew install wget
brew install zoxide

# brew install fzf-tab
# brew install bat
# brew install exa
# brew install fd
# brew install ripgrep
# brew install jq
# brew install yq
# brew install tmux
# brew install neovim
# brew install git
# brew install git-delta
# brew install git-extras
# brew install git-lfs
# brew install git-secrets
# brew install gitui
# brew install gitup
