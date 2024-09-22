-- Options

-- Settings
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.eb = false
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.history = 64
vim.opt.ttimeoutlen = 0
vim.opt.autochdir = true
vim.opt.syntax = "sync"
vim.cmd('language en_US')
vim.opt.spelllang = "en,cjk"

-- Indentation
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.foldenable = false
vim.opt.list = true
vim.opt.listchars = "tab:󰤃 "

-- Filetype
vim.cmd [[filetype on]]
vim.cmd [[filetype indent on]]
vim.cmd [[filetype plugin on]]

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Cache
vim.opt.backup = false

