ZSH=~/.dotfiles/zsh/modules

source $ZSH/aliases.zsh
source $ZSH/bindkeys.zsh
source $ZSH/completion.zsh
source $ZSH/options.zsh
# source $ZSH/rails.zsh
source $ZSH/terminal.zsh
source $ZSH/highlighting.zsh

source-if-exists ~/.zlocal

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/Bill/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
