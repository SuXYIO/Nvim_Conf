return {'folke/zen-mode.nvim',
	lazy = true,
	cmd = 'ZenMode',
	dependencies = { 'https://github.com/folke/twilight.nvim' },
	opts = {
		window = {
			backdrop = 0.95,
			options = {
				signcolumn = "no",
				number = false,
				relativenumber = false,
				cursorline = false,
				cursorcolumn = false
			},
		},
		plugins = {
			options = {
				enabled = true,
				ruler = false,
				showcmd = false,
				laststatus = 0,
			},
			twilight = { enabled = true },
			gitsigns = { enabled = false },
			tmux = { enabled = false },
			todo = { enabled = false },
			kitty = {
				enabled = true,
				font = "+2",
			},
			alacritty = {
				enabled = false,
				font = "16",
			},
			wezterm = {
				enabled = false,
				font = "+2",
			},
			neovide = {
				enabled = true,
				scale = 1.2,
			},
		},
	}
}
