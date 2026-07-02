-- Options

-- Settings
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.eb = false
vim.opt.ruler = false
vim.opt.showcmd = true
vim.opt.autochdir = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.syntax = "ON"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.wo.relativenumber = true
vim.opt.history = 2048
vim.opt.shada = "<2048,'32,h" -- 2048 lines max for reg, store marks for 32 recent files, don't load highlight search

-- Indentation
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.foldenable = false
vim.opt.list = true
vim.opt.listchars = "tab:│ ,trail:·,extends:󰞘"

-- Filetype
vim.cmd("filetype on")
vim.cmd("filetype indent on")
vim.cmd("filetype plugin on")

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
require("vim._core.ui2").enable({
	enable = true,
})
