return {'nvim-lualine/lualine.nvim',
	event = 'User IceLoad',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = LineSep.component_separators,
				section_separators = LineSep.section_separators,
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
				disabled_filetypes = {'NvimTree'},
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff'},
				lualine_c = {'filename', 'searchcount', 'diagnostics'},
				lualine_x = {'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
			-- tabline replaced by bufferline
			--[[
			tabline = {
				lualine_a = {'buffers'},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {'filesize'},
				lualine_y = {'hostname'},
				lualine_z = {}
			},
			--]]
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
