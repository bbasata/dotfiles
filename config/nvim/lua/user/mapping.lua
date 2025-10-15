vim.cmd('nnoremap <silent> <c-p> :Files<cr>')

vim.cmd('nnoremap <silent> <leader>+ :silent! :resize +10<cr>')
vim.cmd('nnoremap <silent> <leader>- :silent! :resize -10<cr>')

vim.cmd('nnoremap <silent> <leader>a :silent! grep! <c-r><c-w><cr>:copen<cr>')

vim.cmd('nnoremap <silent> <leader>c :silent! :Commentary<cr>')
vim.cmd('xnoremap <silent> <leader>c <esc>:\'<,\'>Commentary<cr>')

vim.cmd('inoremap <silent> <leader>d <esc>:wall\\|:Dispatch<cr>')
vim.cmd('nnoremap <silent> <leader>d :wall\\|:Dispatch<cr>')

vim.cmd('nnoremap <silent> <leader>ee :edit $MYVIMRC<cr>')
vim.cmd('nnoremap <silent> <leader>eg :edit $HOME/dotfiles/config/nvim/ftplugin/go.lua<cr>')
vim.cmd('nnoremap <silent> <leader>em :edit $HOME/dotfiles/config/nvim/lua/user/mapping.lua<cr>')
vim.cmd('nnoremap <silent> <leader>eo :edit $HOME/dotfiles/config/nvim/lua/user/options.lua<cr>')

vim.cmd('nnoremap <silent> <leader>gb :Git blame<cr>')
vim.keymap.set('n', '<leader>gc', function()
	vim.cmd [[Git]]
	vim.api.nvim_feedkeys(':Git commit -m ""', 'nt', false)
	local key = vim.api.nvim_replace_termcodes("<Left>", true, false, true)
	vim.api.nvim_feedkeys(key, 'n', false)
end, { desc = "Git commit" })
vim.cmd('nnoremap <silent> <leader>gp :Git add -p<cr>')
vim.cmd('nnoremap <silent> <leader>gs :Git<cr>')


vim.cmd('inoremap <silent> <leader>p // 🍿')
vim.cmd('nnoremap <silent> <leader>p I<enter>// 🍿 <esc>:write<cr>')

vim.cmd('nnoremap <silent> <leader>t :TagbarToggle<cr>')

vim.cmd('nnoremap <silent> <leader>T :tabnew<cr>')

vim.cmd('nnoremap <silent> <leader><leader> :cnext<cr>')

vim.keymap.set({'i', 'n'}, '<M-e>', vim.diagnostic.open_float, { desc = '[E]xpand diagnostic message' })

vim.keymap.set({'i', 'n'}, '<M-v>', function()
		vim.diagnostic.config({ virtual_lines = not vim.diagnostic.config().virtual_lines })
end, { desc = "Toggle diagnostics [v]irtual lines" })

vim.cmd('nnoremap <silent> <M-q> :confirm qall<cr>')
vim.cmd('nnoremap <silent> <M-w> :bwipe<cr>')

