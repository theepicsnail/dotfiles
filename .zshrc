# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gianu"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
  . .gnupg/.gpg-agent-env
else
  eval `keychain --eval`
fi

source ~/.aliases
