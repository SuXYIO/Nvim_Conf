smoothcursor = {'gen740/SmoothCursor.nvim',
	config = function()
		require('smoothcursor').setup({
			type = "matrix",
			texthl = "SmoothCursor",
			linehl = nil,
			matrix = {
				head = {
					cursor = require('smoothcursor.matrix_chars'),
					texthl = {
						'SmoothCursorBlack',
					},
					linehl = nil,
				},
				body = {
					length = 6,
					cursor = require('smoothcursor.matrix_chars'),
					texthl = {
						'SmoothCursorGreen',
					},
				},
				tail = {
					cursor = nil,
					texthl = {
						'SmoothCursorBlack',
					},
				},
				unstop = false,
			}
		})
	end
}
