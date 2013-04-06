# globals
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g G='| grep'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'

# darwin
alias df="df -kh"
alias du="du -kh"
alias e="exit"
alias l="ls -hl"
alias la="ls -hla"
alias more="less"
alias o="open"
alias p="ps -e"
alias tf="tail -f"

# apps
alias empty-trash="rm -rf ~/.Trash/*"
alias flush-dns="sudo killall -HUP mDNSResponder"
alias hide="chflags hidden"
alias unhide="chflags nohidden"
alias reload!=". ~/.zshrc"
alias update-brew="brew update && brew upgrade && brew cleanup"
alias update-bundle="bundle update && bundle clean"
alias update-gems="gem update --system && gem update && gem cleanup"
alias update-osx="sudo softwareupdate -i -a"
alias update-rbenv="rbenv update"

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
