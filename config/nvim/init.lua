vim.cmd('filetype plugin indent on')

vim.cmd('map <silent> <Leader>a :silent! grep! <c-r><c-w><cr>:copen<cr>')

vim.opt.relativenumber = true
