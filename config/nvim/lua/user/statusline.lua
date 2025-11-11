local custom_theme = require("lualine.themes.auto")
custom_theme.normal.c.bg = "None"

require('lualine').setup {
	options = {
		component_separators = { left = ' ', right = ' ' },
		section_separators = { left = ' ', right = ' ' },
		theme = custom_theme,
	},
	sections = {
		lualine_a = {
			{
				'filename',
				file_status = true,
				newfile_status = true,
				path = 1, -- relative path
			},
		},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {'diagnostics'},
	},
}

-- vim: sw=2 ts=2
