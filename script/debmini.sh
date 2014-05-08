#!/bin/bash

FILES="
.cshrc
.aliases
.bash_aliases
.tmux.conf
.xinitrc
"

for i in $FILES
do
	echo "cp ./$i $HOME/$i"
	cp ./$i $HOME/$i
done

sudo rsync -rv debian/ /
#sudo chmod 640 /etc/sudoers.d/*

# deb http://ftp.debian.org/debian squeeze main contrib
# sudo apt-get install firmware-b43-installer

