export EDITOR="subl -w"
export VISUAL="subl"

export LESS="-R"
export MORE="-R"

export GREP_OPTIONS="-i --color=auto"

export GIT_PS1_SHOWDIRTYSTATE="true"
export GIT_PS1_SHOWSTASHSTATE="true"
export GIT_PS1_SHOWUNTRACKEDFILES="true"

typeset -gU path
path=(/usr/local/{bin,sbin} /usr/{bin,sbin} /{bin,sbin})
