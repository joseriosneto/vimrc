" Include vim stuff
:if filereadable( "/home/joseriosneto/.vimrc" )
   source /home/joseriosneto/.vimrc
:endif

set rtp^=/usr/share/vim/vimfiles/

""""""""""""""""""""""" BASIC """"""""""""""""""""""""""""""
" Quickly edit/source init.vim
nnoremap <Leader>ei :vsp ~/.vim/init.vim<CR>
nnoremap <Leader>si :source ~/.vim/init.vim<CR>

" Windows
nnoremap <silent> <A-h> :wincmd h<CR>
nnoremap <silent> <A-j> :wincmd j<CR>
nnoremap <silent> <A-k> :wincmd k<CR>
nnoremap <silent> <A-l> :wincmd l<CR>

""""""""""""""""""""""" TERMINAL """"""""""""""""""""""""""""""
" Exiting terminal mode with ESC and iterating to other windows
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

" Shortcuts to quickly open hor and ver terminals
nnoremap <Leader>st :sp<CR>:wincmd j<CR>:term<CR>
nnoremap <Leader>vt :vsp<CR>:wincmd l<CR>:term<CR>

" Start inserting when entering a terminal buffer
au BufEnter term://* :startinsert
