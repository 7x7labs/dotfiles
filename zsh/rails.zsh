export RAILS_ENV="development"

# dev
alias b="bundle"
alias be="bundle exec"
alias c="consular start"
alias fs="bundle exec foreman start"
alias g="git"
alias r="bundle exec rails"
alias s="subl"

# TODO: Figure out why rbenv-init causes path order reversal in some environments.
eval "$(rbenv init - zsh)"
path=(.bundle/bin /usr/local/bin /usr/local/sbin $path)
