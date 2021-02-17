" Key Mappings

inoremap jj <Esc>

let mapleader = " "
let maplocalleader = ","

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" System clipboard
inoremap <c-v> <c-r>+
vnoremap <c-c> "+y

cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Map omnicomplete to Ctrl-Space
"inoremap <c-space> <c-x><c-o>
inoremap <silent><expr> <c-space> coc#refresh()

" Clear highlight with \ (opposite of /)
nnoremap <silent> \ :noh<cr>

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

" Format tables using pipe separators
vnoremap \| :Tab /\|<cr>

" Hide the floating terminal
tnoremap <c-x> <c-\><c-n>:FloatermHide<cr>


"============================================================
" CoC Mappings
"============================================================

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
augroup coc_highlight_symbol_under_cursor
  autocmd!
  autocmd CursorHold * silent call CocActionAsync('highlight')
augroup END

function! Expand(exp) abort
    let l:result = expand(a:exp)
    return l:result ==# '' ? '' : "file://" . l:result
endfunction

nnoremap <silent> crcc :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'cycle-coll', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crth :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtt :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtf :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtl :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cruw :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-thread', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crua :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crml :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'move-to-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
nnoremap <silent> cril :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'introduce-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
nnoremap <silent> crel :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'expand-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cram :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'add-missing-libspec', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crcn :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'clean-ns', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cref :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'extract-function', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Function name: ')]})<CR>

nmap <silent> crrn <Plug>(coc-rename)


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

