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
require("plugins/lspconfig")
require("plugins/tree")
require("plugins/todo_comments")
require("plugins/telescope")
require("plugins/lualine")
require("plugins/dashboard")
require("plugins/lspsaga")
require("plugins/cmp")
require("plugins/autopairs")
require("plugins/gitsign")
require("plugins/leetcode")
require("plugins/codeium")
require("plugins/mason")
require("plugins/transparent")
-- Colorscheme
require("colorschemes/ayu")
require("colorschemes/gruvbox")
require("colorschemes/tokyonight")
require("colorschemes/material")

require('lazy').setup({
	-- plug
	Lspconfig,
	Tree,
	Todo_comments,
	Telescope,
	Lualine,
	Dashboard,
	Lspsaga,
	Cmp,
	Autopairs,
	Gitsign,
	Leetcode,
	Codeium,
	Mason,
	Transparent,
	-- colorscheme
	Ayu,
	Gruvbox,
	Tokyonight,
	Material,
})
