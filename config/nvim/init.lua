vim.cmd [[source $VIMRUNTIME/colors/vim.lua]] -- why? https://github.com/NLKNguyen/papercolor-theme/issues/201#issuecomment-2157101456
vim.o.termguicolors = true
vim.cmd [[colorscheme papercolor-prime]] -- also: default, lunaperche, torte, vim, torte-prime
vim.cmd [[filetype plugin indent on]]
vim.cmd [[packadd nohlsearch]]

require('user.options')
require('user.mapping')
require('user.commands')
require('user.lsp')

-- vim.lsp.set_log_level 'debug'
-- print('😮 lsp log level: debug')
vim.lsp.enable({
	'clangd',
	'ember',
	'gopls',
	'jedi_language_server',
	'lua_ls',
	'ruby-lsp',
	'terraformls',
	'zls',
})

require('user.treesitter')
require('user.completion')

vim.diagnostic.config({ signs = false, underline = true, update_in_insert = true, virtual_lines = true, virtual_text = false })

vim.cmd [[autocmd FileType netrw setl bufhidden=delete]]
vim.cmd [[autocmd FileType netrw setl number]]
vim.cmd [[autocmd FileType netrw setl relativenumber]]

