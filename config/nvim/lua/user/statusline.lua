require('lualine').setup {
	options = {
			component_separators = { left = ' ', right = ' ' },
			section_separators = { left = ' ', right = ' ' },
			theme = "tomorrow_night",
	},
	sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {'diagnostics'},
	},
}

-- vim: sw=2 ts=2
