return {'Exafunction/codeium.nvim',
	lazy = true,
	cmd = "Codeium",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	opts = {
		enable_chat = false,
	}
}
