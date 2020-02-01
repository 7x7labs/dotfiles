zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path .zcache

zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit

if command -v kubectl &>/dev/null; then
  source <(kubectl completion zsh)
  alias kc=kubectl
  complete -F __start_kubectl kc
fi
