-- time seperation
tsep4 = {2, 8, 14, 20}
tsep6 = {4, 8, 12, 16, 20}

-- requires
require('pluginit')
require('lspconf')
require('colorcycle')

-- setup keymaps
vim.keymap.set('v', '<D-c>', '"+y')
vim.keymap.set('n', '<D-v>', '"+P')
vim.keymap.set('i', '<D-v>', '<ESC>"+Pi')
vim.keymap.set('n', '<D-s>', '<CMD>w<CR>')

-- setup for neovide
if vim.g.neovide then
	vim.o.guifont = "JetbrainsMono Nerd Font:h16"
	vim.g.neovide_transparency = 0.95
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_theme = 'dark'
	vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
end
