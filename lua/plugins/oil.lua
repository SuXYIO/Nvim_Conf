return {'stevearc/oil.nvim',
	dependencies = {"nvim-tree/nvim-web-devicons"},
	event = 'VimEnter',
	cmd = { "Oil" },
	keys = {
		{'<Leader>o', '<CMD>Oil<CR>'},
	},
	ft = 'dir',
	config = function()
		require("oil").setup()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end
}
