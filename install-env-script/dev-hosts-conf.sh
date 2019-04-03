#!/bin/bash

#===========================================terminator shurtcuts help===================================

echo "check if ruby is installed"

if ! [ -x "$(command -v ruby)" ]; then
   echo "installing ruby";
   sudo apt-get update
   sudo apt-get install ruby-full
   ruby --version
else
   echo "ruby is already installed";
fi

if ! [ -x "$(command -v dory)" ]; then
    echo "installing dory for dnsmasq";
    sudo gem install dory
    sudo dory up
    dory config-file
else
   echo "dory is already installed";
fi

