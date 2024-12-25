return {
	'nvim-lualine/lualine.nvim',
	event = 'User LazyDash',
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = function()
		return {
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
				disabled_filetypes = { 'NvimTree', 'neo-tree', 'snacks_dashboard' },
			},
			sections = {
				lualine_a = {
					{'mode', icon = '', fmt = function(str) return str:sub(1, 4) end}
				},
				lualine_b = {
					{'branch', icon = '󰊢'},
					'diff'
				},
				lualine_c = {
					{'filename', icon = '󰈔', symbols = {modified = '', readonly = '󰈡', unnamed = '󰡯', newfile = '󰝒'}},
					'filetype',
					'filesize',
					{
						-- LSP status
						function()
							local clients = vim.lsp.get_active_clients()
							if next(clients) == nil then
								return 'None'
							end
							return table.concat(vim.tbl_map(function(client) return client.name end, clients), ',')
						end,
						icon = '',
					},
					{'searchcount', icon = '', maxcount = 1024, timeout = 512}
				},
				lualine_x = {
					{'progress', icon = '󰠞'}
				},
				lualine_y = {
					{'location', icon = ''}
				},
				lualine_z = {
					{'datetime', style = '%Y.%m.%d 󰤃 %H:%M:%S 󰤃 %a', icon = '󱑂'}
				}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
