# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

ZSH=~/.dotfiles/zsh/modules

source $ZSH/aliases.zsh
source $ZSH/bindkeys.zsh
source $ZSH/completions.zsh
source $ZSH/highlighting.zsh
source $ZSH/python.zsh
source $ZSH/ruby.zsh

source-if-exists ~/.zlocal

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
