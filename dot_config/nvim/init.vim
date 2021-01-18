lua require 'init'

" if empty(glob("~/.vim/autoload/plug.vim"))
"   execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" endif



set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
runtime! ~/.config/nvim/plugin/*
source ~/.config/nvim/plugins.vim
lua require 'nvim_utils'

" call initmd#init(fnamemodify($MYVIMRC, ":p:h") . "/init.md")
" call initmd#init(fnamemodify($MYVIMRC, ":p:h") . "/plugins.md")
source ~/.config/nvim/settings.vim

source ~/.config/nvim/autocommands.vim
source ~/.config/nvim/plugin/plugin_settings.vim
source ~/.config/nvim/plugin/functions.vim

source ~/.config/nvim/plugin/keymaps.vim
source ~/.config/nvim/after/veonim_config.vim


" source ~/.config/nvim/statusline.vim
source ~/.config/nvim/after/theme.vim

au BufReadPost *
         \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' 
         \ |   exe "normal! g`\""
         \ | endif
