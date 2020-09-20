#!/bin/bash

for ext in $(cat ./vscode/extentions.txt)
do
  code --install-extension $ext
done
