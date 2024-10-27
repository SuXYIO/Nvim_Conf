return {'Exafunction/codeium.nvim',
	cmd = {"Codeium"},
	keys = {
		{'<Leader>n', '<CMD>Codeium Enable<CR>'}
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({
			enable_chat = false,
		})
	end
}
