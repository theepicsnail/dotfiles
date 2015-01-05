[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
[ $TMUX ] || tmux new-session -A -d -s main
