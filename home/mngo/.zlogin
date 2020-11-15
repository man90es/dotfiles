# /etc/zsh/zprofile

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec nohup startx > .xlog & vlock
fi
