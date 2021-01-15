local o = vim.o 
local fn = vim.fn
local g = vim .g

require('plugins')
require('opts')

vim.cmd('colo nord')

require('setup')
require('binds')
require('stl')
