return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = function()
		-- Must use function format since using global vars
		return {
			options = {
				component_separators = LineSep.component_separators,
				section_separators = LineSep.section_separators,
				globalstatus = true,
				disabled_filetypes = { "NvimTree", "snacks_dashboard", "sagaoutline" },
			},
			sections = {
				lualine_a = {
					{
						"mode",
						icon = "",
						fmt = function(str)
							-- Extract first 4 chars for shorter display
							return str:sub(1, 4)
						end,
					},
				},
				lualine_b = {
					{ "branch", icon = "󰊢" },
				},
				lualine_c = {
					"diagnostics",
				},
				lualine_x = {},
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
