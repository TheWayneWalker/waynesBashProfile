#!/bin/bash

git config --global --replace-all alias.br "branch"
git config --global --replace-all alias.brs "branch -avv"
git config --global --replace-all alias.st "status"
git config --global --replace-all alias.sa "stash"
git config --global --replace-all alias.co "checkout"
git config --global --replace-all alias.pr "pull --rebase"
#git config --global --replace-all alias.lgl "log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate"
git config --global --replace-all alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

git config --global user.email "dewayne.walker@gmail.com"
git config --global user.name "Dewayne Walker"
git config --global core.editor "vim"

printf "Generated Git Config ====\n\n"
cat ~/.gitconfig
printf "\n\n====\n"
