HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

setopt AUTOCD
setopt COMPLETE_ALIASES
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt LOCAL_OPTIONS
setopt NO_LIST_BEEP
setopt NOMATCH
setopt PROMPT_SUBST
setopt PUSHD_SILENT

unsetopt BEEP
unsetopt CLOBBER
unsetopt EXTENDEDGLOB
unsetopt NOTIFY
unsetopt RMSTARSILENT
unsetopt SHARE_HISTORY

autoload -Uz colors && colors
fpath=(~/.dotfiles/zsh/prompts $fpath)
fpath=(~/.dotfiles/zsh/prompts $fpath)

autoload -Uz promptinit && promptinit
prompt_themes=(fiq 7x7 kaden minimal nicoulaj peepcode thoughtbot spaceship)
