#!/bin/bash

rm Brewfile
brew bundle dump
code --list-extensions > vscode/extensions.txt
