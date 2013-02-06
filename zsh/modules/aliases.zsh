# globals
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep'

# darwin
alias e="exit"
alias more="less"
alias p="ps -e"
alias l="ls -hl"
alias la="ls -hla"
alias o="open"
alias df="df -kh"
alias du="du -kh"
alias tf="tail -f"

# apps
alias reload!='. ~/.zshrc'
alias brew-up="brew update && brew upgrade && brew cleanup"

# delete .DS_Store and __MACOSX directories
function rm-osx-cruft {
  find "${@:-$PWD}" \( \
    -type f -name '.DS_Store' -o \
    -type d -name '__MACOSX' \
  \) -print0 | xargs -0 rm -rf
}

function source-if-exists {
  if [[ -s $1 ]] then
    source $1
  fi
}
