return {
	'Exafunction/codeium.nvim',
	event = 'InsertEnter',
	cmd = "Codeium",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	opts = {
		virtual_text = {
			enabled = true,
			filetypes = {
    			markdown = false,
			}
		}
	}
}
