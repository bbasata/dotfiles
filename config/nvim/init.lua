vim.cmd [[colorscheme owca]]
vim.cmd [[filetype plugin indent on]]
vim.cmd [[packadd nohlsearch]]

vim.g.maplocalleader = ';'

require('user.options')
require('user.mapping')
require('user.commands')
require('user.lsp')
require('user.treesitter')
require('user.completion')
require('user.diagnostic')
require('user.statusline')

-- vim: ts=2 sw=2
