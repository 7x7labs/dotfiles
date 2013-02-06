export RAILS_ENV="development"

alias b="bundle"
alias be="bundle exec"
alias c="consular start"
alias fs="bundle exec foreman start"
alias g="git"
alias r="bundle exec rails"
alias s="subl"

eval "$(rbenv init - zsh)"
path=(.bundle/bin $HOME/.rbenv/shims /usr/local/{bin,sbin} /usr/{bin,sbin} /{bin,sbin})