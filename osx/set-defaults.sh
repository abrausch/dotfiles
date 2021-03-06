# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder
chflags nohidden ~/Library

# enable AirDrop for all devices, e.g. LAN
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# enable better font smoothing
defaults -currentHost write -globalDomain AppleFontSmoothing -int 1

# disable new window animation
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO

# disable mail animations
defaults write com.apple.Mail DisableReplyAnimations -bool YES
defaults write com.apple.Mail DisableSendAnimations -bool YES

