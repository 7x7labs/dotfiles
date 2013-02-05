# (*) unstaged changes
# (+) staged changed
# (%) untracked files
# ($) stashed
source /usr/local/etc/bash_completion.d/git-prompt.sh
git_prompt() {
  # ✭ ✱ ✚ ✖ ⬆ ⬇ ➜ ♺ ═
  echo "$(__git_ps1 ' (%s)')"
}

# shell prompt
setopt prompt_subst
export PS1='${SSH_CONNECTION+"%{$fg[yellow]%}%n@%m:"}%{$fg[cyan]%}%~%{$reset_color%}%{$fg[red]%}$(git_prompt)%{$reset_color%}%{$fg[blue]%} ❯❯ '
