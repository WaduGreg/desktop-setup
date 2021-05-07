#!/bin/bash
 
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
 
echo "Installing packages"
 
pack_list=("i3" "xbacklight" "xinput" "xterm" "ubuntu-title-fonts" "konversation" "sysstat")
 
for package in ${pack_list[*]}; do
        echo "installing $package"
        dnf install -y $package
done
 
echo "All packages are installed"
