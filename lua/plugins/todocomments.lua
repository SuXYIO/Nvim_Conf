return {'folke/todo-comments.nvim', 
	dependencies = 'nvim-lua/plenary.nvim',
	event = 'BufRead',
	-- Test Style
	-- FIX: Test Style
	-- TODO: Test Style
	-- HACK: Test Style
	-- WARN: Test Style
	-- PERF: Test Style
	-- NOTE: Test Style
	-- TEST: Test Style
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
