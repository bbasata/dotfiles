vim.opt_local.wrap = false
vim.opt_local.tabstop = 4

vim.g.go_code_completion_enabled = 0
vim.g.go_code_template_use_pkg = 1
vim.g.go_list_type_commands = { GoCallers = "quickfix", GoImplements = "quickfix", GoReferrers = "quickfix" }

vim.cmd [[nnoremap <buffer> <Leader>1 :e go.sum<cr>]]

vim.keymap.set('n', '<localleader>g', ':Dispatch go get -u github.com/', { buffer = true })
vim.keymap.set('n', '<localleader>h', ':Dispatch go get -u github.com/hashicorp/', { buffer = true })
vim.keymap.set('n', '<localleader>t', ':Dispatch go mod tidy<cr>', { buffer = true, silent = true })
