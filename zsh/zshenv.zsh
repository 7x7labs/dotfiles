export SHELL_SESSIONS_DISABLE=1

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="nano"
export VISUAL="nano"

export LESS="-R"
export MORE="-R"

export CLICOLOR=true
export LSCOLORS="ExfxgxdxCxegedabagacad"

typeset -gU path
path=(/usr/local/{bin,sbin} /usr/{bin,sbin} /{bin,sbin} $HOME/.local/bin)

# Non-interactive zsh commands read this file, but not .zprofile or .zshrc.
# Keep toolchain bootstrap here minimal: paths only, no prompts/completions/hooks.
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

path=($HOME/.local/share/mise/shims $path)
