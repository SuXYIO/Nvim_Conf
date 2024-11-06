return {'Exafunction/codeium.nvim',
	cmd = {"Codeium"},
	keys = {
		{'<Leader>n', '<CMD>Codeium Enable<CR>'}
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	opts = {
		enable_chat = false,
	}
}
