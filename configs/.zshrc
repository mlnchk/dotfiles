# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/danilmelnichuk/.oh-my-zsh"

ZSH_THEME="stefanjudis"

unsetopt inc_append_history
unsetopt share_history

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias npmplease="rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias gitclean="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D"
