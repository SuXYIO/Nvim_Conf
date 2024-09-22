return {'nvim-telescope/telescope.nvim',
	dependencies = 'nvim-lua/plenary.nvim',
	cmd = 'Telescope',
	keys = {
		{'ff', '<CMD>Telescope find_files<CR>'},
	}
}
