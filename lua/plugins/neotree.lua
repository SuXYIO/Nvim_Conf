return {
	'nvim-neo-tree/neo-tree.nvim',
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = 'Neotree',
	keys = {
		{'<Leader>f', '<CMD>Neotree toggle<CR>', mode = 'n', noremap = true, desc = 'toggle tree'}
	},
	opts = {
		window = {
			width = 30,
			mappings = {
				['<Space>'] = 'none',
				['-'] = 'navigate_up',
			}
		}
	}
}
