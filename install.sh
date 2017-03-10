#! /bin/bash

rm ~/.bashrc;
rm ~/.bash_profile;
rm ~/.gitconfig;
rm ~/.tmux.conf;
rm ~/.vimrc;

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/profile ~/.bash_profile
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.vimrc

if [ ! -e ~/.vim/autoload/pathogen.vim ]; then
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
	echo "vim pathogen is installed."
fi
