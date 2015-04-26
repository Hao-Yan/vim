#!/bin/bash
echo "it will take some time to install, please wait in patient"

sudo apt-get install -y vim vim-gnome ctags git

mv -f ~/vim ~/vim_old
cd ~/ && git clone https://github.com/Hao-Yan/vim.git
mv -f ~/.vim ~/.vim_old
mv -f ~/vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vim/.vimrc ~/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "Installing Bundle..." > HaoYan
echo "It will exit automatically after installing finished" > HaoYan
echo " Please wait in patiend" > HaoYan
vim HaoYan -c "BundleInstall" -c "q" -c "q"
rm HaoYan
echo "install finished!"
