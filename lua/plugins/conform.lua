return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			json = { "prettier" },
			markdown = { "prettier" },
			-- c = { "clang-format" },
			lua = { "stylua" },
			python = { "black" },
		},
		format_on_save = {
			lsp_fallback = false,
			async = false,
			timeout_ms = 3000,
		},
	},
}
