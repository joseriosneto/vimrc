#!/bin/sh

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
          curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Fugitive
FUG_HOME=~/.vim/bundle/vim-fugitive
if [  ! -d $FUG_HOME  ]
then
    git clone https://github.com/tpope/vim-fugitive $FUG_HOME
fi

# TagBar
TAGB_HOME=~/.vim/bundle/tagbar
if [  ! -d $TAGB_HOME  ]
then
    git clone https://github.com/majutsushi/tagbar $TAGB_HOME
fi

# Surround.vim
SURR_HOME=~/.vim/bundle/vim-surround
if [  ! -d $SURR_HOME  ]
then
    git clone git://github.com/tpope/vim-surround $SURR_HOME
fi
