vim.cmd [[highlight clear]]
vim.cmd [[runtime colors/default.vim]]
vim.o.termguicolors = false
vim.o.background = 'dark'
vim.g.colors_name = 'owca'

local hl = vim.api.nvim_set_hl

hl(0, 'Normal', { ctermfg = 7, ctermbg = 16 })
hl(0, 'LineNr', { ctermfg = 8 })
hl(0, 'EndOfBuffer', { ctermfg = 16 })

hl(0, 'Special', { ctermfg = 12 })

hl(0, 'Constant', { ctermfg = 9 })
hl(0, 'Keyword', { ctermfg = 5 })
hl(0, 'Function', { ctermfg = 10 })
hl(0, 'String', { ctermfg = 10 })
hl(0, 'Type', { ctermfg = 5 })

-- netrw
hl(0, 'Directory', { ctermfg = 10 })

-- go
hl(0, '@lsp.mod.definition.go', { ctermfg = 15 })
hl(0, '@lsp.type.namespace.go', { ctermfg = 7 })
hl(0, '@lsp.typemod.string.format.go', { ctermfg = 9 })
