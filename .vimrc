""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       GENERAL                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""" Disabling Arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

""""""""""""""""""""""" BASIC """"""""""""""""""""""""""""""
let mapleader = ","
syntax on
set nonumber
set nowrap
set background=dark
set hlsearch
set ignorecase
set smartcase  " It needs ignorecase on
set cursorline " highlight current line
set scrolloff=6 " scrolls when cursor gets 6 lines close to top/bottom edges
set sidescrolloff=6 " scrolls when cursor gets 6 lines close to left/right edges
set showmatch " Jump to the matching bracket when inserting a bracket

" Returning from ins mode quicker
inoremap jk <esc>
inoremap <esc> <nop>

" Delete line in ins mode
inoremap <leader>d <esc>ddi

" Quickly open/source vimrc
nnoremap <leader>ev :vsp $HOME/.vimrc<CR>
nnoremap <leader>sv :source $HOME/.vimrc<CR>

""""""" Searching
set wildmenu
set wildmode=list:full

""""""" Tabulation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

""""""" Search
set hlsearch
set incsearch  " incremental search while typping

nnoremap <silent> <C-l> :nohl<CR>

""""""" Folding
set foldmethod=syntax
set foldlevelstart=99 " Expand all folders when opening a file

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

""""""" Tabs
nnoremap <Left>  :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

""""""" Nice
set laststatus=2
set ruler           " cursor current position in status line
set cc=80

" Spell checker for *.txt,*md files
au FileType *.txt :setlocal spell spelllang=en_us
au FileType *.md :setlocal spell spelllang=en_us


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         PLUGINS                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""" Pathogen
execute pathogen#infect()

""""""" Ctags
set tags=./tags;/
nnoremap <F8> :TagbarToggle<CR>

""""""" Cscope
set nocscopeverbose
set splitright " split tags in a right window

""""""" Git
nnoremap <F5> :Gblame<CR>
nnoremap <F4> :Gvdiff<CR>
