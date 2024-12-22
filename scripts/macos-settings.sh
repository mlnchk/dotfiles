#!/bin/bash

# Good inspo — https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh
# Defaults list — https://github.com/kevinSuttle/macOS-Defaults

# Improve terminal speed
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Make a good typing experience
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Trackpad settings
# Enable tap to click on trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
# Disable swipe navigation
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool false

# Mouse settings
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Dock settings
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 45

# Menu Bar settings
# Hide WiFi in menu bar
defaults -currentHost write  com.apple.controlcenter WiFi -int 24
# Hide Spotlight in menu bar
defaults -currentHost write com.apple.Spotlight MenuItemHidden -int 1
# Hide Input source in menu bar
defaults write com.apple.TextInputMenu visible -bool false


# TODO: check this out
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4

# Disable the “Are you sure you want to open this application?” dialog (doesn't work)
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Disable input source switcher tooltip when using caps lock as input source switcher
# That also replaces tooltip to modal with fn as input source switcher
# https://gist.github.com/stephancasas/236f543b0f9f6509f5fe5878de01e38a?permalink_comment_id=4748936
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled 0
