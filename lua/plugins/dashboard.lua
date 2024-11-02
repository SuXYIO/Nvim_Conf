return {'nvimdev/dashboard-nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VimEnter',
	cmd = 'Dashboard',
	config = function()
		require('dashboard').setup {
			theme = 'hyper',
			config = {
				header = {
						' _______             ____   ____.__         ',
						' \\      \\   ____  ___\\   \\ /   /|__| _____  ',
						' /   |   \\_/ __ \\/  _ \\   Y   / |  |/     \\ ',
						'/    |    \\  ___(  <_> )     /  |  |  Y Y  \\',
						'\\____|__  /\\___  >____/ \\___/   |__|__|_|  /',
						'        \\/     \\/                        \\/ '
				},
				week_header = {enable = false},
				shortcut = {
						{icon = ' ', icon_hl = '@variable', desc = 'Tele', group = 'Label', action = 'Telescope', key = 'f'},
						{icon = ' ', icon_hl = '@variable', desc = 'Lazy', group = 'Label', action = 'Lazy', key = 'd'}
				},
				packages = {enable = true},
				footer = {}
			}
		}
	end,
}
