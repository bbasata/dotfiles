vim.diagnostic.config {
	signs = true,
	underline = true,
	update_in_insert = false,
	virtual_text = false,
	virtual_lines = false
}

vim.diagnostic.handlers.loclist = {
	---@diagnostic disable-next-line: unused-local
	show = function(namespace, bufnr, filtered, opts_res)
		vim.diagnostic.setloclist { open = false }
	end,

	---@diagnostic disable-next-line: unused-local
	hide = function(namespace, bufnr)
		-- neovim does not call `show` when #diagnostics is zero. so: `setloclist` to ensure that
		-- loclist is updated, even when #diagnostics is zero
		vim.diagnostic.setloclist { open = false }
	end,
}

-- vim: ts=2 sw=2
