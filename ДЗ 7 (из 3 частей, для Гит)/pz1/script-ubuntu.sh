#!/bin/bash
if ! grep -q '^deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-backports main' /etc/apt/sources.list; then
    echo "Добавление репозитория Backports"
    sudo sh -c 'echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-backports main" >> /etc/apt/sources.list'
fi

sudo apt update && sudo apt upgrade

sudo apt install apache2
systemctl start apache2

sudo apt install python3

sudo apt install openssh-server
systemctl enable ssh

sudo apt install redshift

sudo apt install wireshark

chmod -v 700 $HOME

sudo mkdir /home/sf

sudo apt install nmap

sudo apt install chkrootkit




