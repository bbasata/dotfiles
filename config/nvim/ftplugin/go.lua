vim.opt_local.wrap = false
vim.opt_local.tabstop = 4

vim.g.go_code_completion_enabled = 0
vim.g.go_code_template_use_pkg = 1
vim.g.go_list_type_commands = { GoCallers = "quickfix", GoImplements = "quickfix", GoReferrers = "quickfix" }

vim.cmd [[nnoremap <buffer> <Leader>1 :GoAlternate!<cr>]]

vim.keymap.set('n', '<localleader>c', ':GoCallers<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>f', ':GoFmt<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>i', ':GoImplements<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>r', ':GoReferrers<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>9', [[:call feedkeys('yS2i"(')<cr>]], { buffer = true })
vim.keymap.set('n', '<localleader>0', [[:call feedkeys('ds(')<cr>]], { buffer = true })
