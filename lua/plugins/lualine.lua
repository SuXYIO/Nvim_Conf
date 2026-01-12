return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
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
				disabled_filetypes = { "NvimTree", "neo-tree", "snacks_dashboard", "sagaoutline" },
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
				},
				lualine_c = {
					"filesize",
				},
				lualine_x = {
					{ "searchcount", icon = "", maxcount = 1024, timeout = 512 },
					{ "progress", icon = "󰠞" },
				},
				lualine_y = {
					{ "location", icon = "" },
				},
				lualine_z = {
					{ "datetime", style = "%H:%M", icon = "󱑂" },
				},
			},
		}
	end,
}
