Tree = {'nvim-tree/nvim-tree.lua',
	dependencies = 'nvim-tree/nvim-web-devicons',
	keys = {
		{'<Leader>f', '<CMD>NvimTreeToggle<CR>'}
	},
	config = function()
		require('nvim-tree').setup({
			git = {
				enable = true,
			},
			view = {
				side = "left",
				number = false,
				relativenumber = false,
				signcolumn = "yes",
				width = 30
			},
			renderer = {
				group_empty = true
			},
			diagnostics = {
				enable = true,
			}
		})
	end
}
