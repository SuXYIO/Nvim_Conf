return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		theme = "doom",
		config = {
			header = {
				[[ _______             ____   ____.__         ]],
				[[ \      \   ____  ___\   \ /   /|__| _____  ]],
				[[ /   |   \_/ __ \/  _ \   Y   / |  |/     \ ]],
				[[/    |    \  ___(  <_> )     /  |  |  Y Y  \]],
				[[\____|__  /\___  >____/ \___/   |__|__|_|  /]],
				[[        \/     \/                        \/ ]],
				"", -- added empty lines for spacing between header and actions
				"",
			},
			center = {
				{
					icon = " ",
					key = "g",
					desc = "Telescope",
					action = ":Telescope builtin include_extensions=true",
				},
				{
					icon = "󰒲 ",
					key = "l",
					desc = "Lazy",
					action = ":Lazy",
				},
				{
					icon = " ",
					key = "m",
					desc = "Mason",
					action = ":Mason",
				},
				{
					icon = " ",
					key = "q",
					desc = "Quit",
					action = ":qa",
				},
			},
			vertical_center = true,
		},
	},
}
