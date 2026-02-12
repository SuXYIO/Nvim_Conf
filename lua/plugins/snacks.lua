return {
	"folke/snacks.nvim",
	event = "VimEnter",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		bigfile = { enabled = true, notify = true },
		notifier = { enabled = true },
		lazygit = { enabled = true, configure = true },
		indent = { enabled = true },
		dashboard = {
			enabled = true,
			sections = {
				{ section = "header", indent = -2 },
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup", icon = "󰉁 " },
				{ section = "recent_files", pane = 2, icon = " ", title = "Recent Files", indent = 2, padding = 1 },
				{ section = "projects", pane = 2, icon = " ", title = "Projects", indent = 2, padding = 1 },
			},
			preset = {
				keys = {
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{ icon = " ", key = "f", desc = "Telescope", action = ":Telescope" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{
						icon = " ",
						key = "m",
						desc = "Mason",
						action = ":Mason",
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				header = [[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
]],
			},
		},
	},
	keys = {
		{
			"<Leader>d",
			function()
				Snacks.lazygit()
			end,
			mode = "n",
			noremap = true,
			desc = "lazygit",
		},
	},
}
