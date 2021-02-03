"  _       _ _         _           
" (_)_ __ (_) |___   _(_)_ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
                                

" sources plugin file
exec 'source' stdpath('config').'/plugins.vim'

" sources core lua stuff
lua require('core.init')

" sources aniseed config stuff
lua require('aniseed.env').init()


