return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "Lspsaga",
	keys = {
		{ "]e", "<CMD>Lspsaga diagnostic_jump_next<CR>", mode = "n", desc = "next diagnostic" },
		{ "[e", "<CMD>Lspsaga diagnostic_jump_prev<CR>", mode = "n", desc = "previous diagnostic" },
		{ "<Leader>a", "<CMD>Lspsaga hover_doc<CR>", mode = "n", desc = "lsp hover doc" },
		{ "<Leader>s", "<CMD>Lspsaga finder<CR>", mode = "n", desc = "lsp finder" },
		{ "<Leader>r", "<CMD>Lspsaga rename<CR>", mode = "n", desc = "lsp rename" },
	},
	opts = {
		implement = { enable = false },
		lightbulb = { enable = false },
		ui = {
			border = "",
			devicon = true,
			title = true,
		},
	},
}
