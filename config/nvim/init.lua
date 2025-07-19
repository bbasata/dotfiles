vim.cmd('source $VIMRUNTIME/colors/vim.lua') -- why? https://github.com/NLKNguyen/papercolor-theme/issues/201#issuecomment-2157101456
vim.o.termguicolors = true
vim.cmd('colorscheme torte-prime') -- also: default, lunaperche, torte, vim, papercolor-prime
vim.cmd('filetype plugin indent on')

vim.cmd('inoremap <silent> <leader>d <esc>:wall\\|:Dispatch<cr>')

vim.cmd('inoremap <silent> <space><space> <esc>')
vim.cmd('nnoremap <silent> <space><space> <esc>')

vim.cmd('nnoremap <silent> <c-p> :Files .<cr>')

vim.cmd('nnoremap <silent> <leader>a :silent! grep! <c-r><c-w><cr>:copen<cr>')

vim.cmd('nnoremap <silent> <leader>c :silent! :Commentary<cr>')
vim.cmd('xnoremap <silent> <leader>c <esc>:\'<,\'>Commentary<cr>')

vim.cmd('nnoremap <silent> <leader>d :wall\\|:Dispatch<cr>')

vim.cmd('nnoremap <silent> <leader>t :TagbarToggle<cr>')

vim.cmd('nnoremap <silent> <Leader><Leader> :cnext<cr>')

vim.g.UltiSnipsSnippetDirectories = { 'ultisnips', 'go-snippets/ultisnips' }

vim.opt.foldmethod = 'syntax'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.rtp:append('/opt/homebrew/opt/fzf')
vim.opt.shortmess:append('I') -- see :intro
