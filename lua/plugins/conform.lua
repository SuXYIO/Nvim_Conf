return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			javascript = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			markdown = { "prettier" },
			-- c = { "clang-format" },
			lua = { "stylua" },
			python = { "black" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 3000,
		},
	},
	keys = {
		{
			"<Leader>z",
			function()
				require("conform").format({ lsp_fallback = true })
			end,
			mode = "n",
			noremap = true,
			desc = "format",
		},
	},
}
