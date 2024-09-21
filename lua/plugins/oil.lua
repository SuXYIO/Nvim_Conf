return {'stevearc/oil.nvim',
	dependencies = {"nvim-tree/nvim-web-devicons"},
	event = 'VimEnter',
	cmd = { "Oil" },
	keys = {
		{'<Leader>o', '<CMD>Oil<CR>'},
	},
	config = function()
		require("oil").setup()
	end
}
