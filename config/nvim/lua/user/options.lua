vim.opt.cdhome = false
vim.opt.cindent = true
vim.opt.cursorline = true
vim.opt.foldmethod = 'syntax'
vim.opt.ignorecase = true
vim.opt.laststatus = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.rtp:append('/opt/homebrew/opt/fzf')
vim.opt.shortmess:append('I') -- see :intro
vim.opt.tags = ".git/tags,tags"
vim.opt.updatetime = 1000
vim.opt.winheight = 5
vim.opt.winminheight = 5
vim.opt.winheight = 999

vim.cmd [[set statusline=[%3p%%]\ %f:%l,%v\ %h%m%r]]
