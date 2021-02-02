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

" Finder for many things; uses a popup window
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" Requires silver searcher to be installed
" https://github.com/ggreer/the_silver_searcher
Plug 'rking/ag.vim'

" Advanced search/replace
" Opens search results in editable window
Plug 'dyng/ctrlsf.vim'


"------------------------------------------------------------
" Autocomplete
"

" Deoplete autocompleter
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Show autocomplete preview in NeoVim's floating window
Plug 'ncm2/float-preview.nvim'


"------------------------------------------------------------
" Languages
"

" Syntax support for many languages
Plug 'sheerun/vim-polyglot'

" Async Linter support
"
" Also run: brew install borkdude/brew/clj-kondo
Plug 'dense-analysis/ale'

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

" Database
"
" You need to have a PostgreSQL client installed:
"
"   brew install libpq
"   brew link --force libpq
"
" Normal usage: select a range, then type :DB to eval it against the server.
"
" See https://github.com/tpope/vim-dadbod/blob/master/doc/dadbod.txt
"
Plug 'tpope/vim-dadbod'

" Snippets editor
"
" Snippets are in files under ~/.config/nvim/UltiSnips, which is managed by my
" dotfiles project. They are immediately loaded upon save.
"
Plug 'SirVer/ultisnips'

" Box Drawing
Plug 'gyim/vim-boxdraw'

call plug#end()

