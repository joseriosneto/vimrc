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

""""""" EXPERIMENTAL. IF I LIKE IT, THEN MOVE IT SOMEWHERE ELSE MORE APPROPRIATED
let mapleader = ","
set showmatch " Jump to the matching bracket when inserting a bracket
" select word
noremap <space> viw
" delete line in normal mode
nnoremap <leader>d dd
" delete line in ins mode
inoremap <leader>d <esc>ddi
" change current word to uppercase in normal mode
nnoremap <leader>u viwUe
" change current word to uppercase in ins mode
inoremap <leader>u <esc>viwUea
" change current word to uppercase in ins mode
inoremap <leader>U <esc>viwuea
" quickly open my vimrc
nnoremap <leader>ev :vsp $HOME/.vimrc<cr>
" quickly source my vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" quickly create if
iabbrev if() if () {<cr><cr>}<esc>=
" quickly create ifelse
iabbrev ifelse() if () {<cr><cr>} else {<cr><cr>}<esc>=
" quickly create for
iabbrev fori() for (int i = 0; i < XXX; ++i) {<cr><cr>}<esc>=
" surround quotes in word in normal mode. REMOVE vim-surround?
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>el
" surround single quotes in word in normal mode. REMOVE vim-surround?
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>el
" surround quotes in word in visual mode. REMOVE vim-surround?
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
" surround single quotes in word in visual mode. REMOVE vim-surround?
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
" mapping <esc> to something easier. CHECK WHETHER HELPS MORE THAN DISTURBS
" inoremap jk <esc>
" inoremap <esc> <nop>


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

""""""" Searching
" Allow recursive search in subdirectories. This might need to be improved
" according to the project. One could use, for instance, /src/*/plugins/**
" to filter the scope of the search.
set path+=**
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
nnoremap <silent> <A-h> :wincmd h<CR>
nnoremap <silent> <A-j> :wincmd j<CR>
nnoremap <silent> <A-k> :wincmd k<CR>
nnoremap <silent> <A-l> :wincmd l<CR>

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
