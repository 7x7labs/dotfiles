# Login zsh reads this after macOS /etc/zprofile, which may reorder PATH.
# Keep this in sync with the minimal path bootstrap in zshenv.zsh.
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

path=($HOME/.local/share/mise/shims $path)
