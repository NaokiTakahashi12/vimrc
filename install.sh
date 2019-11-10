#!/bin/sh
DATE=$(date "+%Y%m%d%H%M%S")
sh setup_vim_color_theme.sh
cp ~/.vimrc ~/.vimrc.$DATE.backup
cat vimrc >> ~/.vimrc
