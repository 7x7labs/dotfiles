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
alias _="sudo"
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
alias brew-update="brew update && brew upgrade && brew cleanup"
alias empty-trash="rm -rf ~/.Trash/*"
alias flush-dns="sudo killall -HUP mDNSResponder"
alias gem-update="gem update --system && gem update && gem cleanup"
alias hide="chflags hidden"
alias osx-update="sudo softwareupdate -i -a"
alias rebuild-open-with="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias rebuild-spotlight="sudo mdutil -E -i on /"
alias reload!=". ~/.zshrc"
alias repair-hd="sudo diskutil repairPermissions /"
alias unhide="chflags nohidden"

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
