return {
	"saghen/blink.cmp",
	lazy = false,
	opts = {
		keymap = {
			preset = "enter",
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
		},
		fuzzy = { implementation = "lua" },
		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
		},
	},
}
