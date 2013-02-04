zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path .zcache

zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit
