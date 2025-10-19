return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			markdown = { "prettier" },
			python = { "black" },
			lua = { "stylua" },
		},
		format_on_save = {
			lsp_fallback = false,
			async = false,
			timeout_ms = 3000,
		},
	},
}
