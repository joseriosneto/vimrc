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
set hlsearch
set ignorecase
set smartcase  " It needs ignorecase on
set cursorline " highlight current line
set scrolloff=6 " scrolls when cursor gets 6 lines close to top/bottom edges
set sidescrolloff=6 " scrolls when cursor gets 6 lines close to left/right edges

""""""" Tabulation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

""""""" Search
set hlsearch
set incsearch  " incremental search while typping

" It turns out that it is harder to use the Alt key in urxvt+vim
" than I first thought. I lost the terminal shortcuts using Alt just
" setting meta8 in urxvt. I am sticking with this solution for now
" but I am not sure yet how it will cope with others terminals and
" platforms.
nnoremap <silent> <Char-27><Char-12> :nohl<CR>

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

""""""" Windows
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

""""""" Tabs
"nnoremap <C-l> :tabnext<CR>
"nnoremap <C-h>  :tabprevious<CR>

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
