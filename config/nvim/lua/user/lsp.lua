assert(vim.lsp.config['clangd'])
vim.lsp.config('clangd', {
})

assert(vim.lsp.config['gopls'])
vim.lsp.config('gopls', {
	-- {settings}? (`lsp.LSPObject`) Map of language server-specific settings,
	-- decided by the client. Sent to the LS if requested via
	-- `workspace/configuration`. Keys are case-sensitive.
	-- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#workspace_configuration

	settings = {
		-- https://go.dev/gopls/settings
		gopls = {
			-- https://github.com/golang/tools/blob/HEAD/gopls/doc/analyzers.md
			-- analyses = {
			-- modernize = false
			-- },

			-- vim.lsp.codelens.refresh() and vim.lsp.codelens.run()
			codelenses = {
				test = true
			},

			-- https://github.com/golang/tools/blob/HEAD/gopls/doc/inlayHints.md
			-- vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				-- does this work?
				ignoredError = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
			importsSource = 'gopls',
			semanticTokens = true,
			usePlaceholders = true
		},
	},
})

assert(vim.lsp.config['lua_ls'])
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
					'${3rd}/luv/library',
					-- '${3rd}/busted/library',
					'/Users/baraa/.local/share/nvim/site/pack/default/start/cmp-go-pkgs'
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


vim.api.nvim_create_autocmd({ 'BufEnter', 'CursorHold', 'InsertLeave' }, {
	callback = function(args)
		vim.lsp.codelens.refresh({ bufnr = args.buf })
	end
})

vim.cmd [[nmenu PopUp.Run\ codelens <Cmd>:lua vim.lsp.codelens.run()<CR>]]
vim.cmd [[unmenu PopUp.How-to\ disable\ mouse]]


-- vim: ts=2 sw=2
