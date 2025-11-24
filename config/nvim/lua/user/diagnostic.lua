vim.diagnostic.config {
	signs = true,
	underline = true,
	update_in_insert = false,
	virtual_text = false,
	virtual_lines = false
}

-- vim.api.nvim_create_autocmd('DiagnosticChanged', {
-- 	callback = function(args)
-- 		if #args.data.diagnostics == 0 then
-- 			vim.diagnostic.setloclist { open = false }
-- 			vim.cmd [[
-- 				try
-- 				  lclose
-- 				catch /^Vim(lclose):/
-- 				endtry
-- 			]]
-- 		end
-- 	end
-- })

vim.diagnostic.handlers.loclist = {
	---@diagnostic disable-next-line: unused-local
	show = function(namespace, bufnr, filtered, opts_res)
		vim.diagnostic.setloclist { open = false }
	end,

	---@diagnostic disable-next-line: unused-local
	hide = function(namespace, bufnr)
		-- neovim appears not to call `show` when #diagnostics is zero. so: `setloclist`
		-- to ensure that loclist is updated, even when #diagnostics is zero
		-- open question: does this make `show` unnecessary?
		vim.diagnostic.setloclist { open = false }

		if #vim.diagnostic.count(bufnr) == 0 and vim.api.nvim_buf_is_valid(bufnr) then
			vim.cmd [[
				try
					lclose
				catch /^Vim(lclose):/
				endtry
			]]
		end
	end,
}

-- vim: ts=2 sw=2
