return {
	"mason-org/mason-lspconfig.nvim",
	event = "VeryLazy",
	dependencies = {
		{
			"mason-org/mason.nvim",
			cmd = "Mason",
			opts = {},
		},
		"neovim/nvim-lspconfig",
	},
	opts = {},
}
