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

""""""""""""""""""""""" EXPERIMENTAL""""""""""""""""""""""""
iabbrev ife if () {<cr>} else {<cr>}
iabbrev ifeif if () {<cr>} else if () {<cr>}
iabbrev fori for (int i = 0; i < 1000; ++i) {<cr>}
iabbrev forj for (int j = 0; j < 1000; ++j) {<cr>}

""""""""""""""""""""""" BASIC """"""""""""""""""""""""""""""
let mapleader = ","
syntax on
set nonumber
set nowrap
set background=light
" set cursorline " highlight current line
set scrolloff=6 " scrolls when cursor gets 6 lines close to top/bottom edges
set sidescrolloff=6 " scrolls when cursor gets 6 lines close to left/right edges
set showmatch " Jump to the matching bracket when inserting a bracket
set grepprg=rg

" Returning from ins mode quicker
inoremap jk <esc>
inoremap <esc> <nop>

" Delete line in ins mode
inoremap <leader>d <esc>ddi

" Quickly open/source vimrc
nnoremap <silent> <leader>ev :vsp $HOME/.vimrc<CR>
nnoremap <silent> <leader>sv :source $HOME/.vimrc<CR>

""""""" Editing

augroup CommentMappings
    au!
    " The following is not ideal yet, especially when the block begins (ie, `<)
    " more to the right than where it ends (ie, `>). So, for example:
    "
    "    return;
    " }
    "
    " If the block starts on the 'r' and ends right after the '}', then running
    " the map will generate the following incorrect comments:
    "
    "  // return
    " }//
    "
    " NOTE:
    "   I tried using ^V but that didn't work. CTRL-Q also starts
    "   blockwise mode and it works fine here.
    "
    "   I got the cmd values typing CTRL-Q followed by another control cmd
    "   in ins-mode.
    au FileType c,cpp :nnoremap <C-s> I// <esc>
    au FileType c,cpp :vnoremap <C-s> <esc>`<I<esc>l`>I// <esc>
    au FileType python :nnoremap <C-s> I# <esc>
    au FileType python :vnoremap <C-s> <esc>`<I<esc>l`>I# <esc>
augroup end

""""""" Searching
set ignorecase
set smartcase  " note: it needs ignorecase on
set hlsearch
set incsearch  " incremental search while typping
set wildmenu
set wildmode=list:full

" Clear search highlight
nnoremap <silent> <C-l> :nohl<CR>

" Highlight word without searching
nnoremap <buffer> <space> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

""""""" Tabulation
set autoindent
set tabstop=4
set shiftwidth=4
" round indent to multiple of 'shiftwidth'
set shiftround
set expandtab

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
filetype on
augroup spell_check
    autocmd!
    au FileType text,markdown :setlocal spell spelllang=en_us
augroup end


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
