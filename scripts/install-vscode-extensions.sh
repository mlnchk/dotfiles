#!/bin/bash

for ext in $(cat ./vscode/extensions.txt)
do
  code --install-extension $ext
done
