export XDG_CONFIG_HOME="$HOME/.config"

export EDITOR="nano"
export VISUAL="nano"

export LESS="-R"
export MORE="-R"

export CLICOLOR=true
export LSCOLORS="ExfxgxdxCxegedabagacad"

typeset -gU path
path=(/usr/local/{bin,sbin} /usr/{bin,sbin} /{bin,sbin} /$HOME/.local/bin)
