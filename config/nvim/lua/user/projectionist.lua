vim.g.projectionist_heuristics = {
	["go.mod"] = {
		["*.go"] = {
			alternate = "{dirname}/{basename}_test.go",
			type = "source"
		},

		["*_test.go"] = {
			alternate = "{dirname}/{basename}.go",
			make =
			[[run="$(grep '^func Test' {file}  | gsed -e 's|func \(.*\)(.*$|\1|' | tr '\n' '|')" go test -v -race -run="$run" ./{dirname}]],
			type = "test"
		},

		["cmd/*.go"] = {
			make = [[go install ./cmd/{dirname}]]
		},

		["*.y"] = {
			make = [[go generate ./{dirname}]],
			alternate = "{dirname}/{basename}_y.go",
		},

		["*_y.go"] = {
			alternate = "{dirname}/{basename}.y",
		}
	},

	["*.tf"] = {
		["*"] = {
			make =
			"TF_IN_AUTOMATION=1 terraform init -no-color -backend=false && terraform plan -no-color -input=false"
		},
	}
}
