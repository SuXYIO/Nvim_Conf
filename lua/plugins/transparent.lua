Transparent = {'xiyaowong/transparent.nvim',
	event = 'VimEnter',
	config = function()
		require("transparent").setup({
			groups = {
				'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
				'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
				'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
				'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
				'EndOfBuffer',
			},
			extra_groups = {},
			exclude_groups = {},
		})
		vim.keymap.set('n', 'T', '<CMD>TransparentToggle<CR>')
	end
}
