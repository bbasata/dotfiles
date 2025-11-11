vim.cmd [[colorscheme owca]]
vim.cmd [[filetype plugin indent on]]
vim.cmd [[packadd nohlsearch]]

vim.g.maplocalleader = ';'
vim.g.go_fmt_autosave = 0

require('user.options')
require('user.mapping')
require('user.commands')
require('user.lsp')

vim.lsp.enable({
	'gopls',
	'lua_ls',
	'terraformls',
	'zls',
})

require('user.treesitter')
require('user.completion')

vim.diagnostic.config {
	signs = true,
	underline = true,
	update_in_insert = false,
	virtual_text = false,
	virtual_lines = false
}

vim.diagnostic.handlers.loclist = {
	show = function()
		vim.diagnostic.setloclist { open = false }
	end
}

vim.cmd [[autocmd FileType netrw setl bufhidden=delete]]
vim.cmd [[autocmd FileType netrw setl number]]
vim.cmd [[autocmd FileType netrw setl relativenumber]]

vim.cmd [[autocmd BufWritePre *.go lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre go.mod lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre go.sum lua vim.lsp.buf.format { async = false }]]

vim.cmd [[autocmd BufWritePre *.lua lua vim.lsp.buf.format { async = false }]]

vim.cmd [[autocmd BufWritePre *.hcl lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre *.tf lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre *.tfvars lua vim.lsp.buf.format { async = false }]]

vim.cmd [[autocmd BufWritePre Brewfile lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre Gemfile lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre *.rb lua vim.lsp.buf.format { async = false }]]
vim.cmd [[autocmd BufWritePre *.ru lua vim.lsp.buf.format { async = false }]]

require('user.statusline')

-- vim: ts=2 sw=2
