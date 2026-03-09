return {
	"saghen/blink.cmp",
	events = { "InsertEnter", "CmdlineEnter" },
	opts = {
		keymap = {
			preset = "enter",
			["<Tab>"] = { "show", "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
		},
		fuzzy = { implementation = "lua" },
		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
			menu = { auto_show = true },
		},
	},
}
