vim.g.terraform_fmt_on_save = 1

vim.keymap.set('n', '<localleader>i', ':Start -wait=always terraform init -no-color<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>p', ':Start -wait=always terraform plan -no-color<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>a', ':Start -wait=always terraform apply -no-color<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>A', ':Start -wait=always terraform apply -no-color -auto-approve<cr>',
	{ buffer = true })
vim.keymap.set('n', '<localleader>d', ':Start -wait=always terraform destroy -no-color<cr>', { buffer = true })
vim.keymap.set('n', '<localleader>d', ':Start -wait=always terraform destroy -no-color -auto-approve<cr>',
	{ buffer = true })
vim.keymap.set('n', '<localleader>v', ':Start -wait=always terraform validate<cr>',
	{ buffer = true })

-- vim: ts=2 sw=2
