" init.vim
"
" Resources
" - http://learnvimscriptthehardway.stevelosh.com/
" - https://github.com/ChristianChiarulli/nvim/blob/master/init.vim

runtime plugins.vim
runtime mappings.vim

colorscheme gruvbox
filetype plugin indent on
syntax on

set background=dark
set clipboard=unnamedplus           " Use the system clipboard for yank/put
set cursorline                      " Highlight the current line
set expandtab                       " Expand tabs to spaces
set ignorecase                      " ...when searching
set incsearch                       " Find matches while typing
set laststatus=2                    " Always show the status line
set lazyredraw                      " Improves Clojure editing format
set number                          " Show line numbers
set scrolloff=2                     " Min lines to show around cursor while searching
set shiftwidth=4                    " Amount by which to indent
set smartcase                       " Ignore ignorecase if pattern has uppercase letters
set softtabstop=-1                  " -1 = use shiftwidth
set spelllang=en_ca                 " I am Canadian!
set splitright                      " Open vertical splits on the right
set t_Co=256                        " Use 256 terminal colours
set wildmode=longest,list           " Wildcard completion

augroup local

    autocmd!

    " Show filename in window title
    autocmd BufEnter * let &titlestring = expand("%:t") | set title

    " Trim trailing whitespace on save
    autocmd BufWritePre * :%s/\s\+$//e

augroup END


" --- Plugin Configs ---

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" ale
let g:ale_linters = {'clojure': ['clj-kondo']} " Disable Joker linting

" dadbod
let g:db = 'postgresql://erbium:password@localhost/'

" deoplete
let g:deoplete#enable_at_startup = 1

" float_preview
set completeopt-=preview
let g:float_preview#docked = 1
let g:float_preview#max_width = 120
let g:float_preview#max_height = 40 " Still shows truncated docs for Clojure functions. Conjure problem?

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=60

" polyglot
let g:sql_type_default = 'pgsql'

" rainbow
let g:rainbow_active = 1
