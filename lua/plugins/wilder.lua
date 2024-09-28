return {'gelguy/wilder.nvim',
	dependencies = 'kyazdani42/nvim-web-devicons',
	event = {'VeryLazy', 'CmdlineEnter'},
	config = function()
		local wilder = require('wilder')

		wilder.set_option('pipeline', {
			wilder.branch(
				wilder.cmdline_pipeline({
					language = 'vim',
					fuzzy = 2,
				}),
				wilder.python_file_finder_pipeline({
					language = 'vim',
					fuzzy = 2,
					file_command = {'fd', '-tf'},
					dir_command = {'fd', '-td'},
					filters = {}
				})
			),
		})
		local popupmenu_renderer = wilder.popupmenu_renderer(
			wilder.popupmenu_border_theme({
				pumblend = 20,
				highlighter = wilder.basic_highlighter(),
				left = {' ', wilder.popupmenu_devicons()},
				right = {' ', wilder.popupmenu_scrollbar()},
				highlights = {
					border = 'Normal',
				},
				border = 'rounded',
			})
		)
		wilder.set_option('renderer', wilder.renderer_mux({
			[':'] = popupmenu_renderer,
		}))

		wilder.setup({modes = {':'}})
	end,
}
