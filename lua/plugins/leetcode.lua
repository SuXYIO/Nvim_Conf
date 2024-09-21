return {'kawre/leetcode.nvim',
	cmd = "Leet",
	build = ":TSUpdate html",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		-- optional
		"nvim-treesitter/nvim-treesitter",
		"rcarriga/nvim-notify",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = "lc" ~= vim.fn.argv()[1],
	opts = {
		arg = "lc",
		lang = "c",
		cn = {
			enabled = true,
			translator = false,
			translate_problems = false,
		},
		image_support = false
	},
}
