-- Key mappings

vim.g.mapleader = ";"
-- copy & paste
vim.keymap.set("v", "<Leader>i", '"+y', { noremap = true, desc = "system copy" })
vim.keymap.set("n", "<Leader>o", '"+P', { noremap = true, desc = "system paste" })
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
vim.keymap.set("n", "<C-k>", "ddkP", { noremap = true, desc = "move line up" })
vim.keymap.set("n", "<C-j>", "ddp", { noremap = true, desc = "move line down" })
-- buffer & window & tab & stuff
vim.keymap.set("n", "<Leader>k", "<CMD>bd<CR>", { noremap = true, desc = "delete buffer" })
vim.keymap.set("n", "<Leader>w", "<C-w>", { noremap = true, desc = "choose window" })
vim.keymap.set("n", "zl", "<CMD>vs<CR>", { noremap = true, desc = "vertical split" })
vim.keymap.set("n", "zj", "<CMD>sp<CR>", { noremap = true, desc = "split" })
-- other
vim.keymap.set("n", "<Leader>l", "<CMD>terminal<CR>", { noremap = true, desc = "open terminal" })
vim.keymap.set("n", "<esc>", "<CMD>noh<CR>", { noremap = true, desc = "no highlight" })
