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
			-- py
			"pyright",
			"ruff",
			-- c
			"clangd",
			-- lua
			"lua_ls",
			"stylua",
			-- go
			"gopls",
		},
	},
}
