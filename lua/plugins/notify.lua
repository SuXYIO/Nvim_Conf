return {'rcarriga/nvim-notify',
	event = 'VeryLazy',
	config = function()
		require("notify").setup({
			stages = 'fade_in_slide_out'
		})
		vim.notify = require("notify")
	end,
}
