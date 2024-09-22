return {'nvimdev/lspsaga.nvim',
	event = 'VeryLazy',
	config = function()
		require('lspsaga').setup({
			ui = {
				border = 'single',
				devicon = true,
				title = true,
				expand = '',
				collapse = '',
				code_action = '',
				actionfix = '󰁨 ',
				imp_sign = ' '
			}
		})
		vim.keymap.set('n', '[e', '<CMD>Lspsaga diagnostic_jump_next<CR>')
		vim.keymap.set('n', '[E', '<CMD>Lspsaga diagnostic_jump_prev<CR>')
		vim.keymap.set('n', '<Leader>s', '<CMD>Lspsaga outline<CR>')
		vim.keymap.set('n', '<Leader>a', '<CMD>Lspsaga code_action<CR>')
		vim.keymap.set('n', '<Leader>v', '<CMD>Lspsaga peek_definition<CR>')
		vim.keymap.set('n', '<Leader>c', '<CMD>Lspsaga show_line_diagnostics<CR>')
	end,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	}
}
