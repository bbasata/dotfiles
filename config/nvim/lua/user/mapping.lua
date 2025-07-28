vim.cmd('nnoremap <silent> <c-p> :Files<cr>')

vim.cmd('nnoremap <silent> <leader>a :silent! grep! <c-r><c-w><cr>:copen<cr>')

vim.cmd('nnoremap <silent> <leader>c :silent! :Commentary<cr>')
vim.cmd('xnoremap <silent> <leader>c <esc>:\'<,\'>Commentary<cr>')

vim.cmd('inoremap <silent> <leader>d <esc>:wall\\|:Dispatch<cr>')
vim.cmd('nnoremap <silent> <leader>d :wall\\|:Dispatch<cr>')

vim.cmd('nnoremap <silent> <leader>t :TagbarToggle<cr>')

vim.cmd('nnoremap <silent> <leader>T :tabnew<cr>')

vim.cmd('nnoremap <silent> <Leader><Leader> :cnext<cr>')
