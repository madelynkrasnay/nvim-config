" Key Mappings

inoremap jj <Esc>

let mapleader = " "
let maplocalleader = ","

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Map omnicomplete to Ctrl-Space
inoremap <c-space> <c-x><c-o>

" Clear highlight with \ (opposite of /)
nnoremap \ :noh<cr>

" Mappings to quickly move through the results
"
" Move quickly between windows
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l

" Use shift + hjkl to resize windows
nnoremap <silent> <s-down>  :resize -2<CR>
nnoremap <silent> <s-up>    :resize +2<CR>
nnoremap <silent> <s-left>  :vertical resize -2<CR>
nnoremap <silent> <s-right> :vertical resize +2<CR>

" Escape insert mode in the terminal
tnoremap <esc> <c-\><c-n>

" Hide the floating terminal
tnoremap <c-x> <c-\><c-n>:FloatermHide<cr>


"============================================================
" Spacemacs/Spacevim inspired mappings
"
" Let this be the way forward!
"============================================================

"------------------------------------------------------------
" ALE commands SPC a...
"------------------------------------------------------------
"
nnoremap <silent> <leader>an :ALENext<cr>
nnoremap <silent> <leader>ap :ALEPrevious<cr>

"------------------------------------------------------------
" Quickfix commands SPC c...
"------------------------------------------------------------
"
nnoremap <silent> <leader>cn :cn<cr>
nnoremap <silent> <leader>cp :cp<cr>

"------------------------------------------------------------
" Buffer commands SPC b...
"------------------------------------------------------------

nnoremap <leader>bz :Clap buffers<cr>

"------------------------------------------------------------
" File commands SPC f...
"------------------------------------------------------------

nnoremap <leader>ft :NERDTreeToggle<cr>
nnoremap <leader>ff :NERDTreeFind<cr>
nnoremap <leader>fl :FloatermNew lf<cr>
nnoremap <leader>fz :Clap files<cr>

"------------------------------------------------------------
" Terminal (Floaterm) commands SPC t...
"------------------------------------------------------------

nnoremap <leader>tn :FloatermNew<cr>
nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>tz :Clap floaterm<cr>

