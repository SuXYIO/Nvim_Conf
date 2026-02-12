return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VimEnter",
	opts = {
		options = {
			indicator = {
				style = "underline",
			},
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count)
				return "[" .. count .. "]"
			end,
			offsets = {
				{
					filetype = "NvimTree",
					text = "Tree",
					text_align = "center",
					separator = true,
				},
			},
			show_buffer_close_icons = false,
			show_close_icon = false,
			separator_style = "slant",
			groups = {
				items = {
					{
						name = "Docs",
						icon = " ",
						-- seems that normal bufs are of priority 3, and priority >= 5 seems to raise an error
						priority = 4,
						matcher = function(buf)
							-- there are bugs using path, but filename is deprecated
							return buf.path:match("%.md") or buf.path:match("%.txt")
						end,
					},
					{
						name = "Tests",
						icon = "󰙨 ",
						priority = 4,
						matcher = function(buf)
							return buf.path:match("%_test")
						end,
					},
				},
			},
		},
	},
	keys = {
		{ "<Tab>", "<CMD>BufferLineCycleNext<CR>", mode = "n", noremap = true, desc = "next buffer" },
		{ "<S-Tab>", "<CMD>BufferLineCyclePrev<CR>", mode = "n", noremap = true, desc = "previous buffer" },
		{ "<Leader>j", "<CMD>BufferLinePick<CR>", mode = "n", noremap = true, desc = "pick buffer" },
	},
}
