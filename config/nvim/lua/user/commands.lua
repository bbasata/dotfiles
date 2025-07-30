vim.api.nvim_create_user_command(
	"Files",
	[[call fzf#vim#files(<q-args>, {'options': ['--cycle', '--no-info', '--color', 'pointer:yellow', '--bind', '\:jump,jump:accept']}, <bang>0)]],
	{ bang = true, complete = 'dir', nargs = '?', }
)

vim.api.nvim_create_user_command("LS", "Buffers", {})
