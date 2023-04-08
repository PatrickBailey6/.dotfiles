#!/bin/bash

rm -f ~/.vimrc #Remove .vimrc from the home directory
sed 's/source \~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc #Search for the pattern and replace it with nothing
rm -f ~/.TRASH

