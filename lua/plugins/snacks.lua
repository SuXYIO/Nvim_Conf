return {'folke/snacks.nvim',
	lazy = false,
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		bigfile = { enabled = true, notify = true },
		notifier = { enabled = true },
		lazygit = { enabled = true, configure = true },
		bufdelete = { enabled = true },
		dashboard = {
			enabled = true,
			sections = {
				{ section = 'header' },
				{ section = 'keys', gap = 1, padding = 1 },
				{ section = 'startup' },
				{ pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
			},
			preset = {
				keys = {
					{ icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
					{ icon = " ", key = "f", desc = "Telescope", action = ":Telescope" },
					{ icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
					{ icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				header =
				[[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
]]
			},
		}
	},
	keys = {
		{ "<Leader>d", function() Snacks.lazygit() end },
		{ "<Leader>k", function() Snacks.bufdelete() end }
	}
}
