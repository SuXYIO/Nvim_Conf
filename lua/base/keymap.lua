-- Key mappings

vim.g.mapleader = ";"

-- move
vim.keymap.set("n", "K", "5k", { noremap = true, desc = "move up 5 lines" })
vim.keymap.set("n", "J", "5j", { noremap = true, desc = "move down 5 lines" })
vim.keymap.set("v", "K", "5k", { noremap = true, desc = "move up 5 lines" })
vim.keymap.set("v", "J", "5j", { noremap = true, desc = "move down 5 lines" })
-- copy & paste
vim.keymap.set("v", "<D-c>", '"+y', { noremap = true, desc = "system copy" })
vim.keymap.set("v", "<Leader>i", '"+y', { noremap = true, desc = "system copy" })
vim.keymap.set("n", "<D-v>", '"+p', { noremap = true, desc = "system paste normal" })
vim.keymap.set("i", "<D-v>", '<ESC>"+pi', { noremap = true, desc = "system paste insert" })
-- save & quit
vim.keymap.set("n", "<Leader>q", "<CMD>q<CR>", { noremap = true, desc = "quit" })
vim.keymap.set("n", "<Leader>ww", "<CMD>w<CR>", { noremap = true, desc = "write" })
vim.keymap.set("n", "<Leader>wa", "<CMD>wa<CR>", { noremap = true, desc = "write all" })
vim.keymap.set("n", "<Leader>wq", "<CMD>wq<CR>", { noremap = true, desc = "write & quit" })
-- mode swap
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, desc = "insert quit" })
vim.keymap.set("n", "<Space>", ":", { noremap = true, desc = "command enter" })
vim.keymap.set("t", "<Leader><Esc>", "<C-\\><C-n>", { noremap = true, desc = "terminal quit" })
-- edit
vim.keymap.set("n", "<A-k>", "ddkP", { noremap = true, desc = "move line up" })
vim.keymap.set("n", "<A-j>", "ddp", { noremap = true, desc = "move line down" })
-- buffer & window & tab & stuff
vim.keymap.set("n", "<Leader>k", "<CMD>bd<CR>", { noremap = true, desc = "delete buffer" })
vim.keymap.set("n", "<Leader>w", "<C-w>", { noremap = true, desc = "choose window" })
vim.keymap.set("n", "zl", "<CMD>vs<CR>", { noremap = true, desc = "vertical split" })
vim.keymap.set("n", "zj", "<CMD>sp<CR>", { noremap = true, desc = "split" })
-- other
vim.keymap.set("n", "<Leader>l", "<CMD>terminal<CR>", { noremap = true, desc = "open terminal" })
vim.keymap.set("n", "<Leader>n", "<CMD>noh<CR>", { noremap = true, desc = "no highlight" })
vim.keymap.set("t", "<D-d>", "<C-d>", { noremap = true, desc = "send EOF" })
