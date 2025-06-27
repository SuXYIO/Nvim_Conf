return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	cmd = "NvimTreeToggle",
	keys = {
		{ "<Leader>f", "<CMD>NvimTreeToggle<CR>", mode = "n", noremap = true, desc = "toggle nvim tree" },
	},
	opts = {
		hijack_cursor = true,
		respect_buf_cwd = true,
		diagnostics = {
			enable = true,
		},
		renderer = {
			indent_markers = {
				enable = true,
			},
		},
		filters = {
			git_ignored = false,
			custom = { ".git", ".DS_Store" },
		},
	},
}
