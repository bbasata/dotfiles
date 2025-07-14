vim.cmd('filetype plugin indent on')

vim.cmd('nnoremap <silent> <Leader>a :silent! grep! <c-r><c-w><cr>:copen<cr>')
vim.cmd('nnoremap <silent> <Leader>p :FZF<cr>')
vim.cmd('nnoremap <silent> <Leader><Leader> :cnext<cr>')

vim.g.UltiSnipsSnippetDirectories = { 'ultisnips', 'go-snippets/ultisnips' }

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.rtp:append('/opt/homebrew/opt/fzf')
