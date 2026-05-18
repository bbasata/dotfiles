require('nvim-treesitter').install({ 'c', 'cpp', 'go', 'gomod', 'gosum', 'gotmpl', 'gowork', 'hcl', 'idris', 'lua',
	'luadoc', 'python', 'ruby', 'swift', 'terraform', 'yaml', 'zig' })

-- https://github.com/nvim-treesitter/nvim-treesitter/issues/6465#issuecomment-2118106832
vim.treesitter.language.register('terraform', { 'terraform', 'terraform-vars' })

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'c', 'cpp', 'go', 'hcl', 'lua', 'python', 'ruby', 'swift', 'terraform', 'zig' },
	callback = function()
		-- syntax highlighting, provided by Neovim
		vim.treesitter.start()
		-- folds, provided by Neovim
		vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		-- indentation, provided by nvim-treesitter
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
