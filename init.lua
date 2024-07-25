-- Neovim Config
-- By SuXYIO

-- Requires
require('base')
require('timeseps')
require('pluginit')
require('lspconf')
require('colorcycle')

-- Setup for neovide
if vim.g.neovide then
	vim.o.guifont = "JetbrainsMono Nerd Font:h16"
	vim.g.neovide_transparency = 0.95
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_theme = 'dark'
	vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
end
