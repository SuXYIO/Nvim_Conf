return {'folke/snacks.nvim',
	lazy = false,
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		bigfile = { enabled = true, notify = true },
		notifier = { enabled = true },
		lazygit = { enabled = true, configure = true },
		bufdelete = { enabled = true },
		indent = { enabled = true },
		terminal = { enabled = true },
		dashboard = {
			enabled = true,
			sections = {
				{ section = 'header', indent = -2 },
				{ section = 'keys', gap = 1, padding = 1 },
				{ section = 'startup', icon = '󰉁 ' },
				{ section = "recent_files", pane = 2, icon = " ", title = "Recent Files", indent = 2, padding = 1 },
				{ section = "projects", pane = 2, icon = " ", title = "Projects", indent = 2, padding = 1 },
				{
					pane = 2,
					icon = "󰊢 ",
					title = "Git Status",
					section = 'terminal',
					enabled = function()
						return Snacks.git.get_root() ~= nil
					end,
					cmd = 'hub --no-pager diff --stat -B -M -C 2> /dev/null || git status 2> /dev/null',
					height = 5,
					indent = 2,
					padding = 1
				},
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
		{"<Leader>d", function() Snacks.lazygit() end, mode = 'n', noremap = true, desc = 'lazygit'},
		{"<Leader>k", function() Snacks.bufdelete() end, mode = 'n', noremap = true, desc = 'delete buffer'},
		{"<Leader>l", function() Snacks.terminal() end, mode = 'n', noremap = true, desc = 'open terminal'}
	}
}
