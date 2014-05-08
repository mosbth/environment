#!/bin/bash

FILES="
.cshrc
.aliases
.bash_aliases
.xsession
.tmux.conf
"

for i in $FILES
do
	echo "cp ./$i $HOME/$i"
	cp ./$i $HOME/$i
done

sudo rsync -rv linux/ /
sudo chmod 640 /etc/sudoers.d/*

