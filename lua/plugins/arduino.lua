return {
	"yuukiflow/Arduino-Nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"neovim/nvim-lspconfig",
	},
	ft = "arduino",
	config = function()
		require("Arduino-Nvim.lsp").setup()

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "arduino",
			callback = function()
				require("Arduino-Nvim")
			end,
		})
	end,
}
