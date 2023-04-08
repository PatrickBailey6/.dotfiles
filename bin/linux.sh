#!/bin/bash

if [ uname != "Linux" ] 
then #Check if uname not "linux"
	echo "Error, operating system is not Linux" >> ./linuxsetup.log #Append message to setup log
	exit #Exit the terminal
fi
mkdir -p ~/.TRASH #Make trash directory
if [[ -f "~/.vimrc" ]] 
then #If .vimrc exists
	mv ~/.vimrc .bup_vimrc #Rename .vimrc
	echo "Current .vimrc file changed to .bup_vimrc" >> ./linuxsetup.log #Append to log
fi
cat ./etc/vimrc >> ~/.vimrc #Contents to .vimrc in home directory
echo "source \~\/\.dotfiles\/etc\/bashrc_custom" >> ~/.bashrc #Add statement to .bashrc in home directory
