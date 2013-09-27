
defaults write com.apple.frameworks.diskimages skip-verify true
defaults write com.apple.screencapture location ~/Pictures/Screenshots
defaults write com.apple.Dock showhidden -bool YES

defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

chflags nohidden ~/Library/

killall SystemUIServer
