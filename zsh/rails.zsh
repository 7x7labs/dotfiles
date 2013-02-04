export RAILS_ENV="development"

# dev
alias b="bundle"
alias be="bundle exec"
alias c="consular start"
alias fs="bundle exec foreman start"
alias g="git"
alias r="bundle exec rails"
alias s="subl"

eval "$(rbenv init - zsh)"
path=(.bundle/bin $path)
