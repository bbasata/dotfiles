vim.g.projectionist_heuristics = {
	["*"] = {
		["*.go"] = {
			alternate = "{dirname}/{basename}_test.go",
			type = "test"
		},

		["expression.go"] = {
			alternate = "expression_test.go",
			type = "test"
		},

		["*_test.go"] = {
			alternate = "{dirname}/{basename}.go",
			type = "source"
		}
	}
}
