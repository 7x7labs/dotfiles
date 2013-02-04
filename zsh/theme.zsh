# directory colors
export CLICOLOR=1
export LSCOLORS="Exfxcxdxbxegedabagacad"

# color constants
autoload -U colors
colors

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
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg[cyan]%}%~%{$reset_color%}%{$fg[red]%}$(git_prompt)%{$reset_color%}%{$fg[blue]%} ❯❯ '

# terminal titlebar
set-term-title() {
  [[ -t 1 ]] || return
  case $TERM in
    sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
      ;;
  esac
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd set-term-title
