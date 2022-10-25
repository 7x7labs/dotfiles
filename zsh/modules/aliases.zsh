# globals
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

# darwin
alias _="sudo"
alias e="exit"
alias l="ls -hl"
alias la="ls -hla"
alias more="less"
alias o="open"
alias p="ps -e"
alias tf="tail -f"

# osx
alias osx-empty-trash="rm -rf ~/.Trash/*"
alias osx-flush-dns="sudo killall -HUP mDNSResponder"
alias osx-rebuild-open-with="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias osx-rebuild-spotlight="sudo mdutil -E -i on /"
alias osx-repair-hd="sudo diskutil repairPermissions /"
alias osx-update="sudo softwareupdate -i -a"

# apps
alias brew-update="brew update && brew upgrade && brew cleanup && brew autoremove"
alias gem-update="gem update --system && gem update && gem cleanup"
alias reload!=". ~/.zshrc"

# dev
alias g="git"
alias s="subl"

# delete .DS_Store and __MACOSX directories
function osx-rm-cruft {
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
