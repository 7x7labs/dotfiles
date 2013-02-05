#
# Super clean and fast git prompt.
#
# Author:
#   @thoughtbot.com
#
# Credit:
#   https://github.com/thoughtbot/dotfiles/blob/master/zlogin
#

# adds the current branch name in green
prompt_thoughbot_gitinfo() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}

prompt_thoughtbot_setup() {
  PROMPT='$(prompt_thoughbot_gitinfo)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '
}

prompt_thoughtbot_setup "$@"
