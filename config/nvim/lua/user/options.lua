vim.opt.foldmethod = 'syntax'
vim.opt.laststatus = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.rtp:append('/opt/homebrew/opt/fzf')
vim.opt.shortmess:append('I') -- see :intro

vim.cmd [[set statusline=[%n]\ [%3p%%]\ %f:%l,%v\ %h%m%r\ %=%{go#statusline#Show()}\ %=%{substitute(getcwd(),$HOME,'~','')}]]
