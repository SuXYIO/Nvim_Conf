return {'nvimdev/lspsaga.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	event = 'User LazyDash',
	config = function()
		require('lspsaga').setup({
			ui = {
					border = 'single',
					devicon = true,
					title = true,
					expand = ' ',
					collapse = ' ',
					code_action = '',
					imp_sign = ' '
			}
		})
		vim.keymap.set('n', ']e', '<CMD>Lspsaga diagnostic_jump_next<CR>', { noremap = true, desc = 'next diagnostic' })
		vim.keymap.set('n', '[e', '<CMD>Lspsaga diagnostic_jump_prev<CR>', { noremap = true, desc = 'previous diagnostic' })
		vim.keymap.set('n', '<Leader>s', '<CMD>Lspsaga outline<CR>', { noremap = true, desc = 'lsp outline' })
		vim.keymap.set('n', '<Leader>a', '<CMD>Lspsaga code_action<CR>', { noremap = true, desc = 'lsp code action' })
		vim.keymap.set('n', '<Leader>v', '<CMD>Lspsaga peek_definition<CR>', { noremap = true, desc = 'lsp peek definition' })
	end
}
