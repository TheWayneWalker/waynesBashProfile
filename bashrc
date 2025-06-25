#!/bin/bash
echo " - Sourcing bashrc."

#Load common aliases
source ~/.bash_commonrc

#Load Mac or Linuxrc
case $OSTYPE in 
    darwin* ) 
        if [ -f ~/.bash_macrc ]
        then
            source ~/.bash_macrc
        fi
    ;; 

    linux* )
        if [ -f ~/.bash_linuxrc ]
        then
            source ~/.bash_linuxrc
        fi
    ;;
esac

# don't put duplicate lines or lines starting with space in the history.
#ignoredups, ignorespace, erasedups, See bash(1) for more options
export HISTCONTROL=ignoreboth 
shopt -s histappend # append to the history file, don't overwrite it

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000
export HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#Set default editor to vim
export EDITOR=/usr/bin/vim

#Special Prompt with color Prompt
export PS1="\[\033[0;94m\]\u@\h:\w\n$\[\033[0m\]"

export PATH=:$PATH:~/bin

java -version
 
echo " - Finished sourcing bashrc."
