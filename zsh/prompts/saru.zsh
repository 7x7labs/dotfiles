#
# Simple, fast prompt that uses git's built-in bash script.
#
# Author:
#   Bill Mers <bill.w.mers@gmail.com>
#

# (*) unstaged changes
# (+) staged changed
# (%) untracked files
# ($) stashed
prompt_saru_gitinfo() {
  print "$(__git_ps1 ' (%s)')"
}

prompt_saru_setup() {
  # export git-prompt environment
  export GIT_PS1_SHOWDIRTYSTATE="true"
  export GIT_PS1_SHOWSTASHSTATE="true"
  export GIT_PS1_SHOWUNTRACKEDFILES="true"

  source /usr/local/etc/bash_completion.d/git-prompt.sh

  PROMPT='${SSH_CONNECTION+"%{$fg[yellow]%}%n@%m:"}%{$fg[cyan]%}%~%{$reset_color%}%{$fg[red]%}$(prompt_saru_gitinfo)%{$reset_color%}%{$fg[blue]%} ❯❯ '
}

prompt_saru_setup "$@"
