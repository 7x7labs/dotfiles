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

# directory colors
export CLICOLOR=1
export LSCOLORS="Exfxcxdxbxegedabagacad"

# color constants
autoload -U colors
colors

autoload -Uz add-zsh-hook
add-zsh-hook precmd set-term-title

source ~/.dotfiles/zsh/prompts/kaden.zsh
