" init.vim
"
" Resources
" - https://vimways.org/2018/from-vimrc-to-vim/
" - https://github.com/ChristianChiarulli/nvim/blob/master/init.vim
" - http://learnvimscriptthehardway.stevelosh.com/

runtime plugins.vim
runtime mappings.vim

colorscheme gruvbox
filetype plugin indent on
syntax on

set background=dark
set completeopt+=menuone            " Show complete menu even with just one item
set cursorline                      " Highlight the current line
set expandtab                       " Expand tabs to spaces
set ignorecase                      " ...when searching
set incsearch                       " Find matches while typing
set laststatus=2                    " Always show the status line
set lazyredraw                      " Improves Clojure editing format
set nowrap                          " Disable virtual line wrapping
set number                          " Show line numbers
set scrolloff=2                     " Min lines to show around cursor while searching
set shiftwidth=4                    " Amount by which to indent
set smartcase                       " Ignore ignorecase if pattern has uppercase letters
set softtabstop=-1                  " -1 = use shiftwidth
set spelllang=en_ca                 " I am Canadian!
set splitright                      " Open vertical splits on the right
set termguicolors                   " Enables 24-bit RGB color in the TUI
set virtualedit=block               " Allows block selection to go outside current text
                                    " Handy for vim-drawbox box drawing
set wildmode=longest,list           " Wildcard completion

augroup local

    autocmd!

    " Show filename in window title
    autocmd BufEnter * let &titlestring = expand("%:t") | set title

    " Trim trailing whitespace on save
    autocmd BufWritePre * :%s/\s\+$//e

    " Don't kill terminals when buffer hidden
    autocmd TermOpen * setlocal bufhidden=hide nonumber

augroup END

" --- Plugin Configs ---

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" ale
let g:ale_linters = {'clojure': ['clj-kondo']} " Disable Joker linting

" asciidoctor
let g:asciidoctor_syntax_conceal = 1

" compe
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.source = {}
let g:compe.enabled = v:true
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
"let g:compe.source.vsnip = v:true

" conjure
" fix lagginess with deoplete completions
let g:conjure#client#clojure#nrepl#completion#with_context = v:false
" don't map K, since we use LSP instead
let g:conjure#mapping#doc_word = v:false

" dadbod
let g:db = 'postgresql://erbium:password@localhost/'

" echodoc
let g:echodoc_enable_at_startup = 1

" float_preview
set completeopt-=preview
let g:float_preview#docked = 1
let g:float_preview#max_height = 40 " Still shows truncated docs for Clojure functions. Conjure problem?

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" lsp (native)
lua require'lspconfig'.clojure_lsp.setup{}

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=60

" polyglot
let g:sql_type_default = 'pgsql'

" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {'separately': { 'vimwiki': 0 }}
colorscheme gruvbox

" telescope
lua <<EOF
require('telescope').setup{
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    generic_sorter = require('telescope.sorters').get_fzy_sorter,
  }
}
EOF

" vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/',
                     \ 'links_space_char': '-'}]
let g:vimwiki_auto_header = 1

" Notes
let g:notes_dir = "~/Dropbox/Notes"
command! Notes execute "e " . g:notes_dir . "/index.adoc"
function! Diary()
    call mkdir(expand(g:notes_dir . strftime("/Diary/%Y/%m")), "p")
    execute "e " . g:notes_dir . strftime("/Diary/%Y/%m/%F.adoc")
    if line("$") == 1
        call append(0, "= " . strftime("%F"))
        call append(1, "")
    endif
endfunction
command! Diary call Diary()


silent! source .project.vim
