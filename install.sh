#! /bin/bash

if [ -f ~/.bashrc ]; then rm ~/.bashrc; fi
if [ -f ~/.bash_profile ]; then rm ~/.bash_profile; fi
if [ -f ~/.gitconfig ]; then rm ~/.gitconfig; fi
if [ -f ~/.tmux.conf ]; then rm ~/.tmux.conf; fi
if [ -f ~/.vimrc ]; then rm ~/.vimrc; fi

ln -s ~/code/dotfiles/bashrc ~/.bashrc
ln -s ~/code/dotfiles/profile ~/.bash_profile
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/code/dotfiles/vimrc ~/.vimrc
