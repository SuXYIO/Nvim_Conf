-- Client support

-- Neovide
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h16"
	vim.opt.linespace = 0
	vim.g.neovide_opacity = 0.9
	vim.g.neovide_window_blurred = true
	vim.g.neovide_floating_blur_amount_x = 8.0
	vim.g.neovide_floating_blur_amount_y = 8.0
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_theme = "auto"
end
