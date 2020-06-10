if test ! $(which tmux)
then
    if test $(which brew)
    then
        brew install tmux
    fi
fi
