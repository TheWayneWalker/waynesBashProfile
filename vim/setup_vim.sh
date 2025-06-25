#!/bin/bash

if [ -f $HOME/.vimrc ]
then
    echo "backing up vimrc"
    mv $HOME/.vimrc $HOME/.vimrc.back
fi

ln -s $PWD/vimrc $HOME/.vimrc
