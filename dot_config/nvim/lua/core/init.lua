local o = vim.o 
local fn = vim.fn
local g = vim.g

local global = require('core.global')

require('core.packer')
require('plugins._treesitter')
require('plugins._telescope')

local options = require('core.options')
local binds = require('core.binds')
options:load_options()

vim.cmd('colo nord')


