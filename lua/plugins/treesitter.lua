return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "markdown" },
			auto_install = true,
		})
	end,
}
