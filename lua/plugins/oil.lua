return {'stevearc/oil.nvim',
	dependencies = {"nvim-tree/nvim-web-devicons"},
	event = "VimEnter",
	config = function()
		require("oil").setup()
	end
}
