#!/usr/bin/env bash

#sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65
sudo touch /etc/sysctl.d/99-sysctl.conf
echo "net.ipv4.ip_default_ttl=65" >> /etc/sysctl.d/99-sysctl.conf
sysctl -p

#Git, maven, gradlle, android studio, intelej idea, skype, telegram, keepass, chrome, retroarch, viber, dropbox, yandexdisc, lshw, neofetch, htop, jdk, 

sudo pacman -Syu linux-headers dkms
git clone https://github.com/tomaspinho/rtl8821ce.git
cd rtl8821ce/
sudo sh ./dkms-install.sh
#sudo make all
#sudo make install
#sudo modprobe -a 8821ce