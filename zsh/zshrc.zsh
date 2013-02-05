ZSH=~/.dotfiles/zsh

source $ZSH/aliases.zsh
source $ZSH/bindkeys.zsh
source $ZSH/completion.zsh
source $ZSH/options.zsh
source $ZSH/rails.zsh
source $ZSH/terminal.zsh

source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow,bold'

source-if-exists ~/.zlocal
