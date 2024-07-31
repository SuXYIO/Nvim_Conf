-- Key mappings
vim.g.mapleader = ";"
vim.keymap.set('v', '<D-c>', '"+y')
vim.keymap.set('n', '<D-v>', '"+P')
vim.keymap.set('i', '<D-v>', '<ESC>"+Pi')
vim.keymap.set('n', '<D-s>', '<CMD>w<CR>')
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Space>", ":", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "ddkP", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "ddp", { noremap = true })
vim.api.nvim_set_keymap("n", "<esc>", "<CMD>noh<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>j", "<CMD>bn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>k", "<CMD>bd<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>l", "<CMD>terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", "jk", "<C-\\><C-n>", { noremap = true })

-- Self defined commands
vim.api.nvim_create_user_command("Hex", "%!xxd", {})
vim.api.nvim_create_user_command("Dehex", "%!xxd -r", {})

-- Settings
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.eb = false
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.history = 64
vim.opt.ttimeoutlen = 0
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

-- Spell checking
vim.api.nvim_create_augroup("SpellCheck", {})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "text",
	callback = function()
		vim.opt_local.spell = true
	end,
})

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Cache
vim.opt.backup = false
