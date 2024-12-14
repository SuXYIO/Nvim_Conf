return {'nvimdev/lspsaga.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	keys = {
		{']e', '<CMD>Lspsaga diagnostic_jump_next<CR>', mode = 'n', noremap = true, desc = 'next diagnostic'},
		{'[e', '<CMD>Lspsaga diagnostic_jump_prev<CR>', mode = 'n', noremap = true, desc = 'previous diagnostic'},
		{'<Leader>s', '<CMD>Lspsaga outline<CR>', mode = 'n', noremap = true, desc = 'lsp outline'},
		{'<Leader>a', '<CMD>Lspsaga code_action<CR>', mode = 'n', noremap = true, desc = 'lsp code action'},
		{'<Leader>v', '<CMD>Lspsaga peek_definition<CR>', mode = 'n', noremap = true, desc = 'lsp peek definition'}
	},
	event = 'User LazyDash',
	opts = {
		ui = {
			border = 'single',
			devicon = true,
			title = true,
			expand = ' ',
			collapse = ' ',
			code_action = '',
			imp_sign = ' '
		}
	}
}
