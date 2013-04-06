export RAILS_ENV="development"

alias b="bundle"
alias be="bundle exec"
alias fs="bundle exec foreman start"
alias g="git"
alias r="bundle exec rails"
alias s="subl"

path=(.bundle/bin $HOME/.rbenv/bin /usr/local/{bin,sbin} /usr/{bin,sbin} /{bin,sbin})
eval "$(rbenv init -)"
eval "$(hub alias -s)"
