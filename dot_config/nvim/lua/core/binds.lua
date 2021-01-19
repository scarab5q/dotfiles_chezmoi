--  __  __                   _
-- |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___
-- | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
-- | |  | | (_| | |_) | |_) | | | | | (_| \__ \
-- |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
--              |_|   |_|            |___/

local g = vim.g

local function remap(mode, key, result, opts)
  opts = vim.tbl_extend('keep', opts or {}, {
      noremap = true,  
      silent = true,
      expr = false,
    })
end

--
--  REMAP ; to :
--
remap( "n", ";", ":")
remap( "n", ":" , ";")


--
-- swap ' and `
--

remap("n", "'", "`")
remap("n" ,"`", "'")


vim.o.timeout = true 
vim.o.ttimeoutlen = 100



--
-- Leader to space
--


remap("n" , "<SPACE>","<Nop>" )

vim.fn.nvim_set_keymap('n', ' ', '', {noremap = true})
vim.fn.nvim_set_keymap('x', ' ', '', {noremap = true})
vim.g.mapleader = " "



-- choose win

remap("n", "<leader>W", "<Plug>(choosewin)")
vim.g.choosewin_overlay_enable = 1


--**************
--  Kakoune Undo
--**************
remap("n", "U", "<C-r>")


--******************
-- Kakoune use Macro
--******************

remap("n", "Q", "@q")



--********************************* 


remap("n", "<leader>fs", ";w<CR>")
remap( "n", "<leader>ff", ";CtrlSpace O<CR>" ) 

--*******************************
-- Vimspector (Debugger) bindings
--*******************************


remap( "n", "<leader>vs", ";call vimspector#Launch()<CR>``" ) 

--*********************
-- File Editor Bindings
--*********************
--*********************
remap( "n", "<leader>fed", ":tabedit<CR>: tcd ~/.config/nvim/<CR>: e ~/.config/nvim/plugins.vim<CR>" ) 
remap( "n", "<leader>fes", ":source ~/.config/nvim/init.vim<CR>" ) 


-----------------
-- Tab Management
-----------------

remap( "n", "<leader>tN", ":tabedit<CR>" ) 
remap( "n", "<leader>td", ":tabclose<CR>" ) 
remap( "n", "<leader>tw", ":tcd %:h<CR>" ) 
remap( "n", "<leader>tN", ":tabedit<CR>" ) 
remap( "n", "<leader>tn", ":tabnext<CR>" ) 
remap( "n", "<leader>tp", ":tabprev<CR>" ) 

--------------------------------------
-- Plugin management bindings (space + F)
--------------------------------------
--*************************************


remap( "n", "<leader>pi", ";PlugInstall<CR>" )
remap( "n", "<leader>pU", ";UpdateRemotePlugins<CR>" )
remap( "n", "<leader>pu", ";PlugUpdate<CR>" )
remap( "n", "<leader>pc", ";PlugClean<CR>" )


-- *********************
-- clipboard management
-- *********************
--*********************
remap( "n", "<leader>cy", '"+' ) 
remap( "n", "<leader>cp", '"*' ) 

-- **********
-- Searching
-- **********
--**********

remap( "n", "/", "/\v" ) 
-- ******************
-- terminal bindings
-- ******************

-- create terminal
remap( "n", "<leader>!", ":Te<CR>" ) 

-- escape from terminal mode
remap( "t", "kj", "<C-\\><C-n>" ) 


remap( "n", "<Leader>bt", ";TagbarToggle<CR>" )

-- ************
-- FZF Bindings
-- ************

remap( "n", "<silent>", "<Leader>ff :Files<CR>" ) 
remap( "n", "<silent>", "<Leader>fr :Rg<CR>" ) 
remap( "n", "<silent>", "<Leader>ft :Tags<CR>" ) 
remap( "n", "<silent>", "<Leader>fw :Windows<CR>" ) 
remap( "n", "<silent>", "<Leader>fb :Buffers<CR>" ) 
remap( "n", "<silent>", "<leader>fg :Gi" ) 
remap( "n", "<silent>", "<Leader>fm :Marks<CR>" ) 

remap( "n", "<leader>fF", ":FzfFasdFile<CR>" ) 
remap( "n", "<leader>fF", ":FzfFasdDir<CR>" ) 

-- *********************
-- FZF.vim key bindings
-- *********************

remap( "n", "<leader>", "s" ) 
-- *********************
-- Easy Motion Bindings
-- *********************

remap( "n", "\f", "f" ) 
-- map -f <Plug>(easymotion-overwin-f)
-- map ,L <Plug>(easymotion-d-jk)
-- map ,L <Plug>(easymotion-d-jk)
remap( "n", '\\h', "<Plug>(easymotion-backward)" )
remap( "n", "\\l", "<Plug>(easymotion-lineforward)" )
-- remap( "n", "\j", "j" ) 
-- remap( "n", "jlk", "<Plug>(easymotion-overwin-line)" ) 
-- remap( "n", "jlk", "<Plug>(easymotion-overwin-line)" ) 
remap( "n", "-j", "<Plug>(easymotion-j)" ) 
remap( "n", "\\L", "<Plug>(easymotion-overwin-line)" ) 
remap( "n", "\\w", "<Plug>(easymotion-overwin-w)zz" ) 

vim.g.EasyMotion_startofline = 0 -- keep cursor column when JK motion let g:EasyMotion_smartcase = 1
vim.g.hardtime_allow_different_key = 1

remap( "c", "$t", "<CR>:t''<CR>" ) 
remap( "c", "$T", "<CR>:T''<CR>" ) 
remap( "c", "$m", "<CR>:m''<CR>" ) 
remap( "c", "$M", "<CR>:M''<CR>" ) 
remap( "c", "$d", "<CR>:d<CR>``" ) 





-- ******************
-- NERDTree_Bindings
-- ******************
--******************
-- map <leader>0 :NnnPicker '%:p:h'<CR> 
-- remap( "n", "<leader>0", ":NERDTreeToggle %:p:h<CR>" ) 
-- remap( "n", "<leader>0", ":NERDTreeToggle %:p:h<CR>" ) 
remap( "n", "<leader>y", ":NERDTreeToggle %:p:h<CR>" ) 



-- ********************************
-- reading in an external command 
-- ********************************
--********************************
remap( "n", "<A-1>", ":read ! " ) 
remap( "n", "<C-!>", "!" ) 


-- ******************************
-- Rebinds of $ and ^ to L and H
-- ******************************
--******************************
remap( "n", "H", "^" ) 
remap( "n", "L", "g$" ) 
-- A Whole bunch of Heressey
-- A Whole bunch of Heressey

-- ************************
-- Center Cursor on screen
-- ************************
--************************

-- remap( "n", "j", "jzz" ) 
-- remap( "n", "k", "kzz" ) 
-- remap( "n", "k", "kzz" ) 
-- ****************
--  Buffer Bingings
-- ****************

remap( "n", "<silent>", "<Leader>bb :Buffers<CR>" ) 
remap( "n", "<silent>", "<Leader>bh :Bn<CR>" ) 
-- remap( "n", "<silent>", "<Leader>bh BB<CR>" ) 
-- remap( "n", "<silent>", "<Leader>bh BB<CR>" ) 
remap( "n", "<silent>", "<Leader>bl :BF<CR>" ) 
remap( "n", "<silent>", "<leader>qq :wqall<CR>" ) 
--  remap( "n", "<C-f>", "<C-b>" ) 
-- " remap( "n", "<C-b>", "<C-f>" ) 
-- remap( "n", "<C-b>", "<C-f>" ) 

-- ***************
-- Escape with jk
-- ***************
--***************

iremap( "n", "jk", "<Esc>" ) 
iremap( "n", "kj", "<Esc>" ) 


-- *****************
-- Asterix Bindings
-- *****************
--*****************

remap( "n", "n", "<Plug>(is-nohl)<Plug>(anzu-n-with-echo)" )
remap( "n", "N", "<Plug>(is-nohl)<Plug>(anzu-N-with-echo)" )
remap( "n", "*", " <Plug>(asterisk-z*)<Plug>(is-nohl-1)" )
remap( "n", "g*", "<Plug>(asterisk-gz*)<Plug>(is-nohl-1)" )
remap( "n", "#", " <Plug>(asterisk-z#)<Plug>(is-nohl-1)" )
remap( "n", "g#", "<Plug>(asterisk-gz#)<Plug>(is-nohl-1)" )
remap( "n", "*", "  <Plug>(asterisk-*)" )
remap( "n", "#", "  <Plug>(asterisk-#)" )
remap( "n", "g*", " <Plug>(asterisk-g*)" )
remap( "n", "g#", " <Plug>(asterisk-g#)" )
remap( "n", "z*", " <Plug>(asterisk-z*)" )
remap( "n", "gz*", "<Plug>(asterisk-gz*)" )
remap( "n", "z#", " <Plug>(asterisk-z#)" )
remap( "n", "gz#", "<Plug>(asterisk-gz#)" )


--*****************
-- window commands 
-- *****************
--*****************

remap( "n", "<leader>w;", ":split<cr>" ) 
-- remap( "n", "<silent>", "<leader>wh :call MoveLeftOrNerdTree()<cr>" ) 
-- remap( "n", "<silent>", "<leader>wh :call MoveLeftOrNerdTree()<cr>" ) 
g.tmux_navigator_no_mappings = 1

remap( "n", "<silent>", "<C-h> :TmuxNavigateLeft<cr>" ) 
remap( "n", "<silent>", "<C-l> :TmuxNavigateRight<cr>" ) 
remap( "n", "<silent>", "<C-k> :TmuxNavigateUp<cr>" ) 
remap( "n", "<silent>", "<C-j> :TmuxNavigateDown<cr>" ) 

remap( "n", "<silent>", "<leader>wh :TmuxNavigateLeft<cr>" ) 
remap( "n", "<silent>", "<leader>wj :TmuxNavigateDown<cr>" ) 
remap( "n", "<silent>", "<leader>wk :TmuxNavigateUp<cr>" ) 
remap( "n", "<silent>", "<leader>wl :TmuxNavigateRight<cr>" ) 
remap( "n", "<silent>", "{Previous-Mapping} :TmuxNavigatePrevious<cr>" ) 
-- remap( "n", "<silent>", "<leader>wh <c-w>h" ) 
-- remap( "n", "<silent>", "<leader>wl <c-w>l" ) 
-- remap( "n", "<silent>", "<leader>wj <c-w>j" ) 
-- remap( "n", "<silent>", "<leader>wk <c-w>k" ) 
-- remap( "n", "<silent>", "<leader>wk <c-w>k" ) 
-- remap( "n", "<silent>", "<leader>wx :BD<CR>:close<cr>" ) 
-- remap( "n", "<silent>", "<leader>wx :BD<CR>:close<cr>" ) 


-----------------
-- buffer commands
-----------------

remap( "n", "<Leader>bt", ";TagbarToggle<CR>" )
remap( "n", "<silent>", "<leader>bd :bd<CR>" ) 
remap( "n", "<silent>", "<Leader>bb :Buffers<CR>" ) 
remap( "n", "<silent>", "<Leader>bh :bn<CR>" ) 
-- remap( "n", "<silent>", "<leader>bd :BD<CR>" ) 
-- remap( "n", "<silent>", "<leader>bd :BD<CR>" ) 
-- remap( "n", "<silent>", "<Leader>bh :BB<CR>" ) 
-- remap( "n", "<silent>", "<Leader>bh :BB<CR>" ) 
-- *************
-- nnn mappings
-- *************
--*************

remap( "n", "<leader>n", ":NnnPicker '%:p:h'<CR>" ) 
-- *****************
-- Modeline Mapping
-- *****************
--*****************

remap( "n", "<silent>", "<Leader>ml :call AppendModeline()<CR>" ) 
