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
require("plugins/nvim_tree")
require("plugins/todo_comments")
require("plugins/telescope")
require("plugins/lualine")
require("plugins/dashboard")
require("plugins/lspsaga")
require("plugins/cmp")
require("plugins/autopairs")
require("plugins/smoothcursor")
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
	nvim_lspconfig,
	nvim_tree,
	todo_comments,
	telescope,
	lualine,
	dashboard,
	lspsaga,
	cmp,
	autopairs,
	smoothcursor,
	gitsign,
	leetcode,
	codeium,
	mason,
	transparent,
	-- colorscheme
	ayu,
	gruvbox,
	tokyonight,
	material,
})
