return {
	"nvim-lualine/lualine.nvim",
	event = "User LazyDash",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = function()
		return {
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = LineSep.component_separators,
				section_separators = LineSep.section_separators,
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 50,
				},
				disabled_filetypes = { "NvimTree", "neo-tree", "snacks_dashboard" },
			},
			sections = {
				lualine_a = {
					{
						"mode",
						icon = "",
						fmt = function(str)
							return str:sub(1, 4)
						end,
					},
				},
				lualine_b = {
					{ "branch", icon = "󰊢" },
					"diff",
				},
				lualine_c = {
					{
						"filename",
						icon = "󰈔",
						symbols = { modified = "", readonly = "󰈡", unnamed = "󰡯", newfile = "󰝒" },
					},
					"filetype",
					"filesize",
					{ "searchcount", icon = "", maxcount = 1024, timeout = 512 },
				},
				lualine_x = {
					{ "progress", icon = "󰠞" },
				},
				lualine_y = {
					{ "location", icon = "" },
				},
				lualine_z = {
					{ "datetime", style = "%Y.%m.%d 󰤃 %H:%M:%S 󰤃 %a", icon = "󱑂" },
				},
			},
		}
	end,
}
