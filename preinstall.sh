#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
mv ~/.vimrc ~/.vimrc_prev || true
mv .vimrc ~/.vimrc
