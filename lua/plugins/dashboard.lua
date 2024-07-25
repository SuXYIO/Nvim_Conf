dashboard = {'nvimdev/dashboard-nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VimEnter',
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
									{desc = '󰚰 Update', group = '@property', action = 'Lazy update', key = 'u'},
									{icon = ' ', icon_hl = '@variable', desc = 'Files', group = 'Label', action = 'Telescope find_files', key = 'f'};
									{icon = ' ', icon_hl = '@variable', desc = 'Todo', group = 'Label', action = 'TodoTelescope', key = 't'}
							},
							packages = {enable = true},
							footer = {}
					}
			}
	end,
}
