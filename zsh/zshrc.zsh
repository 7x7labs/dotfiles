#
# XDG base directories
#
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export PYTHON_HISTORY="$XDG_CACHE_HOME"/python/history

#
# Aliases
#
source $HOME/.dotfiles/zsh/aliases.zsh

#
# Keybindings
#
bindkey -e
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
bindkey "^[OA" history-beginning-search-backward
bindkey "^[OB" history-beginning-search-forward

#
# Completions
#
FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
# compinit

#
# Zsh plugins (order matters)
#
source <(fzf --zsh)
source-if-exists $HOME/Code/fzf-tab/fzf-tab.plugin.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# Utils
#
eval "$(/opt/homebrew/bin/mise activate zsh)"
eval "$(zoxide init zsh)"
