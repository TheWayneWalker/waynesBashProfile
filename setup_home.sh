#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#My default bash profile
if [ -f $HOME/.bash_profile ]
then
    mv $HOME/.bash_profile $HOME/.bash_profile.backFromSetupScript.sh
fi
ln -s $DIR/bash_profile $HOME/.bash_profile

#My common aliases
if [ -f $HOME/.bash_commonrc ]
then
    mv $HOME/.bash_commonrc $HOME/.bash_commonrc.backFromSetupScript.sh
fi
ln -s $DIR/bash_commonrc $HOME/.bash_commonrc

#My default bash aliases
if [ -f $HOME/.bash_linuxrc ]
then
    mv $HOME/.bash_linuxrc $HOME/.bash_linuxrc.backFromSetupScript.sh
fi
ln -s $DIR/bash_linuxrc $HOME/.bash_linuxrc

#My default bash rc configuration 
if [ -f $HOME/.bashrc ]
then
    mv $HOME/.bashrc $HOME/.bashrc.backFromSetupScript.sh
fi
ln -s $DIR/bashrc $HOME/.bashrc

#My default configuration for git
if [ -f $HOME/.gitconfig ]
then
    mv $HOME/.gitconfig $HOME/.gitconfig.backFromSetupScript.sh
fi
ln -s $DIR/gitconfig $HOME/.gitconfig

#My default configuration for MAC OSX
if [ -f $HOME/.bash_macrc ]
then
    mv $HOME/.bash_macrc $HOME/.bash_macrc.backFromSetupScript.sh
fi
ln -s $DIR/bash_macrc $HOME/.bash_macrc

#My default configuration for VIM
if [ -f $HOME/.vimrc ]
then
    mv $HOME/.vimrc $HOME/.vimrc.backFromSetupScript.sh
fi
ln -s $DIR/vimrc $HOME/.vimrc

source $HOME/.bash_profile
