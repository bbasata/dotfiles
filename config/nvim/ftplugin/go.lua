vim.opt_local.wrap = false
vim.opt_local.tabstop = 4

vim.g.go_code_completion_enabled = 0
vim.g.go_code_template_use_pkg = 1
vim.g.go_list_type_commands = { GoCallers = "quickfix", GoImplements = "quickfix", GoReferrers = "quickfix" }

vim.cmd [[nnoremap <buffer> <Leader>1 :GoAlternate!<cr>]]

vim.keymap.set('n', '<localleader>c', ':GoCallers<cr>')
vim.keymap.set('n', '<localleader>i', ':GoImplements<cr>')
vim.keymap.set('n', '<localleader>r', ':GoReferrers<cr>')
