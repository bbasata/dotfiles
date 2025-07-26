require('nvim-treesitter').install({ 'c', 'cpp', 'go', 'gomod', 'gosum' ,'gotmpl', 'gowork', 'hcl', 'idris', 'lua', 'luadoc', 'python', 'ruby', 'terraform', 'yaml', 'zig' })

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'c', 'cpp', 'go', 'hcl', 'python', 'ruby', 'terraform', 'zig' },
	callback = function()
		-- syntax highlighting, provided by Neovim
		vim.treesitter.start()
		-- folds, provided by Neovim
		vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		-- indentation, provided by nvim-treesitter
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
