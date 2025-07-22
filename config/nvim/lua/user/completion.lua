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
				score_offset = 4,

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
    require("cmp_go_pkgs").init_items(args)
  end,
})
