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
	'clangd',
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

-- via https://www.mitchellhanberg.com/modern-format-on-save-in-neovim/
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})

require('user.statusline')

-- vim: ts=2 sw=2
