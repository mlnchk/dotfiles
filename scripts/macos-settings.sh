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
