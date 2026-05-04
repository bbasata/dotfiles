vim.keymap.set('n', '<leader>ss', function()
	require('sidekick').setup()
	vim.cmd [[Sidekick cli show name=copilot]]
end, { desc = "Show sidekick CLI" })
