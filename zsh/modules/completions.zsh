if type brew &>/dev/null; then
  chmod -R go-w '/opt/homebrew/share/zsh'
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

. /opt/homebrew/etc/profile.d/z.sh
