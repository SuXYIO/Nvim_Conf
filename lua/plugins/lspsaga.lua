return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "Lspsaga",
	keys = {
		{ "]e", "<CMD>Lspsaga diagnostic_jump_next<CR>", mode = "n", noremap = true, desc = "next diagnostic" },
		{ "[e", "<CMD>Lspsaga diagnostic_jump_prev<CR>", mode = "n", noremap = true, desc = "previous diagnostic" },
		{ "<Leader>a", "<CMD>Lspsaga hover_doc<CR>", mode = "n", noremap = true, desc = "lsp hover doc" },
		{ "<Leader>s", "<CMD>Lspsaga finder<CR>", mode = "n", noremap = true, desc = "lsp finder" },
	},
	opts = {
		ui = {
			border = "single",
			devicon = true,
			title = true,
			code_action = "",
		},
	},
}
