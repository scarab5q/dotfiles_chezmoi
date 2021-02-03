" ____  _             _           
"|  _ \| |_   _  __ _(_)_ __  ___ 
"| |_) | | | | |/ _` | | '_ \/ __|
"|  __/| | |_| | (_| | | | | \__ \
"|_|   |_|\__,_|\__, |_|_| |_|___/
"               |___/             

"you need to Specify a directory for plugins

"-   For Neovim: ~/.local/share/nvim/plugged
"-   Avoid using standard Vim directory names like 'plugin'

" {{{ auto install
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent exe '!curl -fL "create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  execute 'source ' . fnameescape(autoload_plug_path)
  let plug_install = 1
endif
unlet autoload_plug_path

" }}}


call plug#begin(stdpath('data') . '/plugged' )

" {{{ telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" }}}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'ludovicchabant/vim-gutentags'
Plug 'justinmk/vim-dirvish'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-repeat'
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
Plug 'reedes/vim-lexical' " Better spellcheck mappings
Plug 'reedes/vim-litecorrect' " Better autocorrections
Plug 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plug 'christoomey/vim-tmux-navigator'
" Markdown
Plug  'jkramer/vim-checkbox', { 'for': 'markdown'} 
Plug  'plasticboy/vim-markdown', { 'for': 'markdown'} 
Plug 'editorconfig/editorconfig-vim'

" Plug 'norcalli/nvim_utils'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'alvan/vim-closetag'
" Plug 'tpope/vim-vinegar'
Plug 'gioele/vim-autoswap'
Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/is.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'roman/golden-ratio'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

Plug 'junegunn/fzf'  
Plug 'junegunn/fzf.vim'

Plug 'takac/vim-hardtime'
Plug 'haya14busa/incsearch.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'haya14busa/vim-asterisk'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-commentary'
Plug 'neomake/neomake'
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
Plug 'godlygeek/tabular'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-endwise', { 'for': [ 'sh', 'bash', 'zsh', 'vim', 'markdown' ]}

" Fennel {{{
Plug 'Olical/aniseed'
Plug 'bakpakin/fennel.vim' 
" }}}

" clojure
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'bhurlow/vim-parinfer'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

Plug 'Olical/conjure'

Plug 'vim-syntastic/syntastic'
call plug#end()
