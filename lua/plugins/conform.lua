return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			c = { "clang_fmt" },
			cpp = { "clang_fmt" },
			markdown = { "prettier" },
			python = { "ruff_format" },
			lua = { "stylua" },
			["*"] = { "codespell" },
		},
		format_on_save = {
			lsp_fallback = false,
			async = false,
			timeout_ms = 3000,
		},
	},
}
