return {
	"nvim-telescope/telescope.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	cmd = "Telescope",
	keys = {
		{ "ff", "<CMD>Telescope<CR>", mode = "n", noremap = true, desc = "telescope" },
	},
	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-u>"] = false,
				},
			},
		},
		pickers = {},
		externsions = {},
	},
}
