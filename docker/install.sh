#!/bin/bash

installDocker() {
  echo 'Install docker script'

  # shellcheck disable=SC2092
  if ! [ -x "$(`command -v docker`)" ]; then
    echo "installing docker"
    sudo apt-get update
    sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   sudo apt-get update
   sudo apt-get install docker-ce docker-ce-cli containerd.io
   sudo usermod -aG docker $USER
  else
   echo "Docker is already installed"
  fi
  echo "Install docker compose"

  # shellcheck disable=SC2092
  if ! [ -x "$(`command -v docker-compose`)" ]; then
    echo "docker compose installation"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
  else
    echo "docker compose is already installed"
  fi
}

installDocker