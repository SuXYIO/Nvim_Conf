return {
	"mason-org/mason.nvim",
	event = "VeryLazy",
	cmd = "Mason",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			automatic_enable = true
		})
		vim.cmd('LspStart')
	end
}
