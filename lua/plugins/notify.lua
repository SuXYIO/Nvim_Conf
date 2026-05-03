return {
	"suxyio/nvim-notify",
	branch = "feat/transparent-warn",
	event = "VeryLazy",
	config = function()
		vim.notify = require("notify")
		require("notify").setup({
			transparent_warn = false,
		})
	end,
}
