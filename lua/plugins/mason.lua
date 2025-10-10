return {
	"mason-org/mason.nvim",
	event = "VeryLazy",
	cmd = "Mason",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()
	end,
}
