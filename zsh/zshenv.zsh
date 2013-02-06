export EDITOR="nano"
export VISUAL="nano"

export LESS="-R"
export MORE="-R"

export CLICOLOR=true
export LSCOLORS="Exfxcxdxbxegedabagacad"
export GREP_OPTIONS="-i --color=auto"

typeset -gU path
path=(/usr/local/{bin,sbin} /usr/{bin,sbin} /{bin,sbin})
