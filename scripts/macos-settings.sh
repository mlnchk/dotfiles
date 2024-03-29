#!/bin/bash

# Improve terminal speed
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Make a good typing experience
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Make Trackpad less annoying
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool false

# Make Dock less annoying
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 45

# TODO: check this out
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4

# Disable the “Are you sure you want to open this application?” dialog (doesn't work)
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Remove ui sound (doesn't work)
defaults write NSGlobalDomain com.apple.sound.uiaudio.enabled -bool false
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# VIM mode key repeat
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Disable input source switcher tooltip when using caps lock as input source switcher
# That also replaces tooltip to modal with fn as input source switcher
# https://gist.github.com/stephancasas/236f543b0f9f6509f5fe5878de01e38a?permalink_comment_id=4748936
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled 0
