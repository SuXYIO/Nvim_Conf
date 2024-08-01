Tree = {'nvim-tree/nvim-tree.lua',
	dependencies = 'nvim-tree/nvim-web-devicons',
	cmd = {'NvimTreeToggle'},
	keys = {
		{'<Leader>f', '<CMD>NvimTreeToggle<CR>'}
	},
	config = function()
		require('nvim-tree').setup({
			respect_buf_cwd = true,
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
		vim.keymap.set('n', '<Leader>f', '<CMD>NvimTreeToggle<CR>')
	end
}
