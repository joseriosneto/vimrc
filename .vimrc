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

""""""" Basic
syntax on
set nonumber
set nowrap
set background=dark

""""""" Tabulation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

""""""" Search
set incsearch  " incremental search while typping

nnoremap <silent> <C-l> :nohl<CR><C-l>

""""""" Folding
set foldmethod=syntax
set foldlevelstart=99 " Expand all folders when opening a file

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

""""""" Nice
set laststatus=2
set ruler           " cursor current position in status line
set cc=80

""""""" Tabs
nnoremap <S-l> :tabnext<CR>
nnoremap <S-h>  :tabprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         PLUGINS                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""" Pathogen
execute pathogen#infect()


""""""" Cscope
set nocscopeverbose
set splitright " split tags in a right window

""""""" Git
nnoremap <F5> :Gblame<CR>
nnoremap <F6> :Gdiff<CR>
