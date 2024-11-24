return {'folke/todo-comments.nvim',
	dependencies = 'nvim-lua/plenary.nvim',
	lazy = true,
	opts = {
		keywords = {
			FIX = { icon = ' ', color = 'error', alt = { 'BUG', 'ERROR', 'ERRO' } },
			TODO = { icon = '󰉹 ', color = 'info' },
			HACK = { icon = ' ', color = 'warning' },
			WARN = { icon = ' ', color = 'warning' },
			PERF = { icon = ' ', color = 'hint' },
			NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
			TEST = { icon = ' ', color = 'test' }
		}
	}
}
