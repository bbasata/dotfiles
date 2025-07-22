require('nvim-treesitter').install({ 'go', 'gomod', 'gosum' ,'gotmpl', 'gowork', 'hcl', 'idris', 'lua', 'luadoc', 'python', 'ruby', 'terraform', 'yaml' })

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'go', 'hcl', 'ruby', 'terraform' },
	callback = function()
		-- syntax highlighting, provided by Neovim
		vim.treesitter.start()
		-- folds, provided by Neovim
		vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		-- indentation, provided by nvim-treesitter
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
