vim.opt_local.wrap = false
vim.opt_local.tabstop = 4

vim.keymap.set('n', '<localleader>g', ':Dispatch go get -u github.com/', { buffer = true })
vim.keymap.set('n', '<localleader>h', ':Dispatch go get -u github.com/hashicorp/', { buffer = true })
vim.keymap.set('n', '<localleader>t', ':Dispatch go mod tidy<cr>', { buffer = true, silent = true })
vim.keymap.set('n', '<localleader>9', [[:call feedkeys('yS2i"(')<cr>]], { buffer = true, silent = true })
vim.keymap.set('n', '<localleader>0', [[:call feedkeys('ds(')<cr>]], { buffer = true, silent = true })
