return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	keys = {
		{ "<Leader>f", "<CMD>NvimTreeToggle<CR>", mode = "n", noremap = true, desc = "toggle nvim tree" },
	},
	opts = {
		on_attach = function(bufnr)
			local api = require("nvim-tree.api")
			api.map.on_attach.default(bufnr)
			vim.keymap.del("n", "f", { buffer = bufnr })
			vim.keymap.del("n", "J", { buffer = bufnr })
			vim.keymap.del("n", "K", { buffer = bufnr })
		end,
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
			custom = { "^\\.git", ".DS_Store" },
		},
	},
}
