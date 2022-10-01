#!/bin/bash

# Change default shell
if [! $0 = "-zsh"]; then
  echo 'Changing default shell to zsh'
  chsh -s $(which zsh)
else
  echo 'Already using zsh'
fi
