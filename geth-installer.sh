#!/bin/bash

#First we need to perform some housekeeping & install dependencies
echo -e "\e[32mFirst we need to perform some housekeeping & install dependencies\e[0m"
echo -e "\e[34mPerforming Housekeeping - Update...\e[0m"
sudo apt-get -y update
echo -e "\e[34mPerforming Housekeeping - Upgrade...\e[0m"
sudo apt-get -y upgrade
echo -e "\e[34mInstalling Dependencies...\e[0m"
sudo apt-get -y install nano screen dphys-swapfile build-essential libgmp3-dev git

#Install GO 1.4.2
echo -e "\e[34mInstalling GO 1.4.2 from source...\e[0m"

#Install golang from source:

cd /usr/local/bin
sudo git clone https://go.googlesource.com/go golang
cd go
sudo git checkout go1.4.2
cd src
sudo ./make.bash

#Install go-ethereum OR `geth`
echo -e "\e[34mInstalling go-ethereum...\e[0m"
cd ~
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum
make geth

