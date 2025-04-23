#!/bin/bash

git config --global --replace-all alias.st "status"
git config --global --replace-all alias.co "checkout"
git config --global --replace-all alias.pr "pull --rebase"
git config --global user.email "dewayne.walker@gmail.com"
git config --global user.name "Dewayne Walker"
git config --global core.editor "vim"

printf "Generated Git Config ====\n\n"
cat ~/.gitconfig
printf "\n\n====\n"
