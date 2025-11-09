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
	opts = {
		automatic_enable = true,
		ensure_installed = {
			"lua_ls",
			"pyright",
			"ruff",
			"stylua",
			"clangd",
		},
	},
}
