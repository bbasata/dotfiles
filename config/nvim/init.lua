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

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("user.lsp", { clear = true }),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

		if not client:supports_method('textDocument/willSaveWaitUntil')
				and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = vim.api.nvim_create_augroup(('user.lsp.%d'):format(args.buf), { clear = true }),
				buffer = args.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
				end,
			})
		end
	end
})

require('user.statusline')

-- vim: ts=2 sw=2
