#! /bin/bash

if [ -f ~/.bashrc ]; then
  rm ~/.bashrc;
fi

if [ -f ~/.bash_profile ]; then
  rm ~/.bash_profile;
fi

if [ -f ~/.gitconfig ]; then
  rm ~/.gitconfig;
fi

if [ -f ~/.tmux.conf ]; then
  rm ~/.tmux.conf;
fi

if [ -f ~/.vimrc ]; then
  rm ~/.vimrc;
fi

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
