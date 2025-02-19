return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	cmd = "NvimTreeToggle",
	keys = {
		{ "<Leader>f", "<CMD>NvimTreeToggle<CR>", mode = "n", noremap = true, desc = "toggle nvim tree" },
	},
	config = function()
		require("nvim-tree").setup({
			respect_buf_cwd = true,
			git = {
				enable = true,
			},
			view = {
				side = "left",
				number = false,
				relativenumber = false,
				signcolumn = "yes",
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			diagnostics = {
				enable = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
		})
		vim.keymap.set("n", "<Leader>f", "<CMD>NvimTreeToggle<CR>", { noremap = true, desc = "nvimtree toggle" })
	end,
}
