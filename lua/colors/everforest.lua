return {
	'sainnhe/everforest',
	lazy = true,
	config = function()
		vim.g.everforest_enable_italic = true
		vim.g.everforest_background = 'medium'
		vim.cmd('colorscheme everforest')
	end
}
