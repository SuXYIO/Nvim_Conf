return {'williamboman/mason.nvim',
	event = 'User IceLoad',
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()
		require("mason-lspconfig").setup_handlers {
			function (server_name)
				require("lspconfig")[server_name].setup {
					root_dir = function() return vim.fn.getcwd() end
				}
			end,
		}
		vim.cmd("LspStart")
	end
}
