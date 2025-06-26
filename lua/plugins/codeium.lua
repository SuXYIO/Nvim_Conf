return {
	"Exafunction/codeium.nvim",
	lazy = true,
	-- event = "InsertEnter",
	cmd = "Codeium",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	opts = {
		virtual_text = {
			enabled = true,
			filetypes = {
				markdown = false,
			},
		},
	},
}
