return {'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VimEnter',
	config = function()
		local bufferline = require('bufferline')
		bufferline.setup({
			options = {
				mode = "buffers",
				style_preset = bufferline.style_preset.default,
				themable = true,
				numbers = "none",
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,
				indicator = {
					icon = '▎',
					style = 'icon',
				},
				buffer_close_icon = '',
				modified_icon = ' ',
				close_icon = ' ',
				left_trunc_marker = ' ',
				right_trunc_marker = ' ',
				diagnostics = "nvim_lsp",
				diagnostics_update_on_event = true,
				diagnostics_indicator = function(count)
					return "["..count.."]"
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true
					}
				},
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				show_duplicate_prefix = true,
				duplicates_across_groups = true,
				persist_buffer_sort = true,
				move_wraps_at_ends = false,
				separator_style = "slant",
				enforce_regular_tabs = false,
				always_show_bufferline = true,
				auto_toggle_bufferline = true,
				sort_by = 'insert_after_current',
				custom_areas = {
					right = function()
						local result = {}
						local seve = vim.diagnostic.severity
						local error = #vim.diagnostic.get(0, {severity = seve.ERROR})
						local warning = #vim.diagnostic.get(0, {severity = seve.WARN})
						local info = #vim.diagnostic.get(0, {severity = seve.INFO})
						local hint = #vim.diagnostic.get(0, {severity = seve.HINT})
						if error ~= 0 then
							table.insert(result, {text = "  " .. error, link = "DiagnosticError"})
						end
						if warning ~= 0 then
							table.insert(result, {text = "  " .. warning, link = "DiagnosticWarn"})
						end
						if hint ~= 0 then
							table.insert(result, {text = "  " .. hint, link = "DiagnosticHint"})
						end
						if info ~= 0 then
							table.insert(result, {text = "  " .. info, link = "DiagnosticInfo"})
						end
						table.insert(result, {text = os.date(" 󰤃 %Y-%m-%d 󰤃 %H:%M:%S 󰤃 %a",os.time()), link = "DateTime"})
						return result
					end,
				}
			}
		})
	end
}

