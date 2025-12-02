-- Adapted from https://www.reddit.com/r/neovim/comments/ogeuau/comment/h4kiu0u/

local group = vim.api.nvim_create_augroup("Term", { clear = true })
vim.api.nvim_create_autocmd("TermClose", {
	group = group,
	nested = true,
	pattern = "*",
	command = [[stopinsert | au Term TermEnter <buffer> stopinsert]]
})
