#!/bin/bash

# Improve terminal speed
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Make a good typing experience
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Make Trackpad less annoying
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool false

# Make Dock less annoying
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 45
