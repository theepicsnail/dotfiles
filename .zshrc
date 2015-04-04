# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gianu"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if type go > /dev/null; then
  . <(go env | grep GO)
  export GOPATH=$HOME/go_root
  export PATH=$PATH:$GOPATH/bin
fi





source ~/.aliases

source ~/.tmux_attach


