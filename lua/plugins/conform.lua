return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			c = { "clang_format" },
			python = { "ruff_format" },
			go = { "gofmt" },
			rust = { "rustfmt" },
			lua = { "stylua" },

			markdown = { "prettier" },
			toml = { "taplo" },
			json = { "jq" },
		},
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 3000,
		},
	},
}
