#!/bin/bash

#===========================================Install git and add shortCuts===================================

installGit() {
  if ! [ -x "$(command -v git)" ]; then
   echo "installing ruby";
   sudo apt-get update
   sudo apt-get install git
  else
   echo "git is already installed";
  fi

 git config --global alias.co checkout
 git config --global alias.br branch
 git config --global alias.ci commit
 git config --global alias.st status
 git config --global user.name $1
 git config --global user.email $2
}

installGit