#!/bin/sh

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
          curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Fugitive
mkdir -p ~/.vim/bundle && \
          git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive

# TagBar
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
