-- Lazyvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plug
require("plugins/tree")
require("plugins/todocomments")
require("plugins/telescope")
require("plugins/lualine")
require("plugins/dashboard")
require("plugins/lspsaga")
require("plugins/cmp")
require("plugins/autopairs")
require("plugins/leetcode")
require("plugins/codeium")
require("plugins/mason")
require("plugins/transparent")
require("plugins/mdpre")
require("plugins/lazygit")
require("plugins/nvim2048")
-- Colorscheme
require("colorschemes/ayu")
require("colorschemes/gruvbox")
require("colorschemes/tokyonight")
require("colorschemes/material")
require("colorschemes/kanagawa")
require("colorschemes/nightfox")
require("colorschemes/lackluster")

require('lazy').setup({
	-- plug
	Tree,
	Todo_comments,
	Telescope,
	Lualine,
	Dashboard,
	Lspsaga,
	Cmp,
	Autopairs,
	Leetcode,
	Codeium,
	Mason,
	Transparent,
	MDPre,
	Lazygit,
	Nvim2048,
	-- colorscheme
	Ayu,
	Gruvbox,
	Tokyonight,
	Material,
	Kanagawa,
	Nightfox,
	Lackluster,
})
