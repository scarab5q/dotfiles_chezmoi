local g = vim.g

g.mapleader = " "

set.hidden          = true
set.secure          = true
set.title           = true
set.lazyredraw      = true
set.splitright      = true
set.modeline        = false
set.ttimeout        = true
set.wildignorecase  = true
set.expandtab       = true
set.shiftround      = true
set.ignorecase      = true
set.smartcase       = true
set.undofile        = true
set.backup          = true
set.magic           = true
set.number          = true
set.tags            = "" -- let gutentags handle this

set.undolevels      = 1000
set.ttimeoutlen     = 20
set.shiftwidth      = 2
set.softtabstop     = 2
set.tabstop         = 2
set.synmaxcol       = 200
set.cmdheight       = 2
set.updatetime      = 200
set.conceallevel    = 2
set.cscopetagorder  = 0
set.cscopepathcomp  = 3
set.showbreak       = string.rep(' ', 3) -- Make it so that long lines wrap smartly

set.mouse           = "nv"
set.foldopen        = "search"
set.encoding        = "UTF-8"
set.fileformat      = 'unix'
set.diffopt         = "hiddenoff,iwhiteall,algorithm:patience"
set.nrformats       = "bin,hex,alpha"
set.wildmode        = "full"
set.grepprg         = "rg --smart-case --vimgrep --block-buffered"
set.virtualedit     = "block"
set.inccommand      = "split"
set.cscopequickfix  = "s-,c-,d-,i-,t-,e-"
set.path            = '.,,,**'
set.tabline         = gitBranch()
set.showtabline     = 2
set.completeopt     = 'menuone,noinsert,noselect,longest'
set.listchars       = 'tab:░░,trail:·,space:·,extends:»,precedes:«,nbsp:⣿'
set.complete        = '.,w,b,u'
set.formatlistpat   = "^\\s*\\[({]\\?\\([0-9]\\+\\|[a-zA-Z]\\+\\)[\\]:.)}]\\s\\+\\|^\\s*[-–+o*•]\\s\\+"
set.wildignore      = '*/dist*/*,*/target/*,*/builds/*,*/flow-typed/*,*.png,*.PNG,*.jpg,*.jpeg,*.JPG,*.JPEG,*.pdf,*.exe,*.o,*.obj,*.dll,*.DS_Store,*.ttf,*.otf,*.woff,*.woff2,*.eot'
set.shortmess       = vim.o.shortmess .. 's'
set.undodir         = home .. "/.cache/Vim/undofile"
set.backupdir       = home .. "/.cache/Vim/backup"
set.directory       = home .. "/.cache/Vim/swap"

-- UI OPTS
set.termguicolors  = true
set.wrap           = false
set.cursorline     = true
set.fillchars      = "stlnc:»,vert:║,fold:·"
set.number         = true
set.pumblend       = 20
set.pumheight      = 15
set.scrolloff      = 1
set.sidescrolloff  = 5
set.display        = "lastline"
set.guicursor      = "n:blinkwait60-blinkon175-blinkoff175,i-ci-ve:ver25"






local set = vim.o 

set.smartindent    = true
set.lazyredraw     = true
set.titlestring    = ''
set.inccommand     = 'split'
set.number         = true             -- show current line number
set.relativenumber = true -- show relative line numbers
set.ignorecase     = true
set.smartcase      = true
set.hls            = true
set.incsearch      = true
set.showmatch      = true
set.ic             = true
set.hidden         = true
set.showmatch      = true
set.ai             = true
set.winaltkeys     = no
set.encoding       = 'UTF-8'
set.modeline       = false


-- sets tab settings
set.tabstop        = 8
set.vimsofttabstop = 0
set.expandtab      = true
set.shiftwidth     = 2
set.smarttab       = true

set.wildmenu       = true
set.wildmode       = "full"

set.mouse          = a

set.nocompatible   = true
set.splitbelow     = true

set.fdm            = marker
