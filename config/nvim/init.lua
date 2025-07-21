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

vim.cmd [[set statusline=[%n]\ [%3p%%]\ %f:%l,%v\ %h%m%r\ %=%{go#statusline#Show()}\ %=%{substitute(getcwd(),$HOME,'~','')}]]

vim.g.UltiSnipsSnippetDirectories = { 'ultisnips', 'go-snippets/ultisnips' }

vim.opt.foldmethod = 'syntax'
vim.opt.laststatus = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.rtp:append('/opt/homebrew/opt/fzf')
vim.opt.shortmess:append('I') -- see :intro

vim.diagnostic.config({ signs = false, underline = true, update_in_insert = true, virtual_lines = true, virtual_text = false })

vim.lsp.config('gopls', {
  -- Server-specific settings. See `:help lsp-quickstart`
  settings = {
    ['gopls'] = {
	    usePlaceholders = true
    },
  },
})

vim.lsp.config('lua_ls', {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath('config')
        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths
          -- here.
          '${3rd}/luv/library'
          -- '${3rd}/busted/library'
        }
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = {
        --   vim.api.nvim_get_runtime_file('', true),
        -- }
      }
    })
  end,
  settings = {
    Lua = {}
  }
})

vim.lsp.set_log_level 'debug'
print('😮 lsp log level: debug')

vim.lsp.enable({'gopls', 'lua_ls'})

-- require('nvim-treesitter').install({ 'go', 'gomod', 'gosum' ,'gotmpl', 'gowork', 'hcl', 'idris', 'lua', 'luadoc', 'python', 'ruby', 'terraform', 'yaml' })

require('blink.compat').setup({ debug = true })

require('cmp').register_source('go_pkgs', require('cmp_go_pkgs'))

require('blink.cmp').setup({
	completion = {
		documentation = { auto_show = true },
		list = { selection = { auto_insert = true, preselect = false } },
		menu = { draw = { treesitter = { 'lsp' } } },
		trigger = { show_on_accept_on_trigger_character = true, show_on_insert_on_trigger_character = true },
	},
	keymap = {
		preset = 'super-tab'
	},
	signature = { enabled = true, window = { show_documentation = false } },
	sources = {
		default = {'lsp', 'path', 'snippets', 'buffer'},
		per_filetype = {
			go = { inherit_defaults = true, 'go_pkgs'}
		},
		providers = {
			snippets = {
					score_offset = 2
			},
			go_pkgs = {
				name = 'go_pkgs',
				module = 'blink.compat.source',
				min_keyword_length = 0,
				max_items = 11,

				-- all blink.cmp source config options work as normal:
				score_offset = 25,

				-- this table is passed directly to the proxied completion source
				-- as the `option` field in nvim-cmp's source config
				--
				-- this is NOT the same as the opts in a plugin's lazy.nvim spec
				opts = {
				}
			}
		}
	}
})

vim.api.nvim_create_autocmd({ "LspAttach" }, {
  pattern = { "*.go" },
  callback = function(args)
  vim.notify("LspAttack")
    require("cmp_go_pkgs").init_items(args)
  end,
})
