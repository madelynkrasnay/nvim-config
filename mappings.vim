inoremap jj <Esc>

let mapleader = " "
let maplocalleader = ","

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Normally, <c-w>v clones the current buffer
" This causes it to create a new, blank window to the right
nnoremap <c-w>v :vnew<cr>

" Map omnicomplete to Ctrl-Space
inoremap <c-space> <c-x><c-o>

" Clear highlight with \ (opposite of /)
nnoremap \ :noh<cr>

" Mappings to quickly move through the results
"
" If a popup menu is visible (e.g. via autocomplete) then these
" move between entries, else moves between the results in the
" quickfix window, such as that shown by :Ag.
inoremap <expr> <C-j> pumvisible() ? "\<c-n>" : "\<c-j>"
inoremap <expr> <C-k> pumvisible() ? "\<c-p>" : "\<c-k>"
nnoremap <C-j> :cn<CR>
nnoremap <C-k> :cp<CR>


"============================================================
" Spacemacs/Spacevim inspired mappings
"
" Let this be the way forward!
"============================================================

"------------------------------------------------------------
" Buffer commands SPC b...
"------------------------------------------------------------

nnoremap <leader>bz :Clap buffers<cr>

"------------------------------------------------------------
" File commands SPC f...
"------------------------------------------------------------

nnoremap <leader>ft :NERDTreeToggle<cr>
nnoremap <leader>ff :NERDTreeFind<cr>
nnoremap <leader>fz :Clap files<cr>

"------------------------------------------------------------
" Table commands SPC t...
"------------------------------------------------------------

nnoremap <leader>t\| :Tabularize /\|<cr>

"------------------------------------------------------------
" Vimrc commands SPC v...
"------------------------------------------------------------

nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vr :source $MYVIMRC<cr>

"------------------------------------------------------------
" Window commands SPC w...
"------------------------------------------------------------

" Jump to window
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l

" Move window
nnoremap <leader>wH <c-w>H
nnoremap <leader>wJ <c-w>J
nnoremap <leader>wK <c-w>K
nnoremap <leader>wL <c-w>L

nnoremap <leader>wo <c-w>o

nnoremap <leader>wn :new<cr>
nnoremap <leader>wv :vnew<cr>

nnoremap <leader>w= <c-w>=

