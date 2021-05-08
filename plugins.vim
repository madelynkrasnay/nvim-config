call plug#begin('~/.local/share/nvim/plugged')

"------------------------------------------------------------
" Appearance
"

" All the colorschemes!
Plug 'flazz/vim-colorschemes'

" Show matching parens in different colors
Plug 'luochen1990/rainbow'

" Fancy status line
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'


"------------------------------------------------------------
" Navigation
"

" File browser
Plug 'scrooloose/nerdtree'

" Super fuzzy search in native Lua
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


"------------------------------------------------------------
" LSP
"

" Configs for nvim built-in LSP client
Plug 'neovim/nvim-lspconfig'


"------------------------------------------------------------
" Autocomplete
"

Plug 'hrsh7th/nvim-compe'


"------------------------------------------------------------
" Languages
"

" Syntax support for many languages
Plug 'sheerun/vim-polyglot'

" Clojure REPL support
Plug 'Olical/conjure', {'tag': 'v4.13.0'}

" Support for s-expressions
Plug 'guns/vim-sexp'

" Write plugins in Fennel
Plug 'Olical/aniseed', { 'tag': 'v3.8.0' }

" Fennel, a Clojure-like LISP that compiles to Lua
Plug 'bakpakin/fennel.vim'



"------------------------------------------------------------
" Productivity
"

" Show calendars, integrates with vimwiki
Plug 'mattn/calendar-vim'

" Vim Wiki
"
" <leader>ww to open the wiki
Plug 'vimwiki/vimwiki'


"------------------------------------------------------------
" PlantUML
"

" PlugUML Syntax
Plug 'aklt/plantuml-syntax'

" Required by plantuml-previewer.vim
Plug 'tyru/open-browser.vim'

" Live preview of PlantUML
Plug 'weirongxu/plantuml-previewer.vim'


"------------------------------------------------------------
" Utilities
"

" Alignment plugin
Plug 'godlygeek/tabular'

" Show menu of completions of multi-keystroke mappings
Plug 'liuchengxu/vim-which-key'

" GIT interface
Plug 'tpope/vim-fugitive'

" Snippets editor
"
" Snippets are in files under ~/.config/nvim/UltiSnips, which is managed by my
" dotfiles project. They are immediately loaded upon save.
"
Plug 'SirVer/ultisnips'

call plug#end()

