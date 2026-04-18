return {
	"nvim-telescope/telescope.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	cmd = "Telescope",
	keys = {
		{
			"<Leader>g",
			"<CMD>Telescope builtin include_extensions=true<CR>",
			mode = "n",
			noremap = true,
			desc = "telescope",
		},
	},
	config = function()
		require("telescope").load_extension("todo-comments")
	end,
}
