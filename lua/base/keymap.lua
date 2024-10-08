-- Key mappings

vim.g.mapleader = ";"
vim.keymap.set('v', '<Leader>i', '"+y')
vim.keymap.set('n', '<Leader>o', '"+P')
vim.keymap.set('i', '<Leader>o', '<ESC>"+Pi')
vim.keymap.set('n', '<Leader>q', '<CMD>q<CR>')
vim.keymap.set('n', '<Leader>ww', '<CMD>w<CR>')
vim.keymap.set('n', '<Leader>wq', '<CMD>wq<CR>')
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Space>", ":", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "ddkP", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "ddp", { noremap = true })
vim.api.nvim_set_keymap("n", "<esc>", "<CMD>noh<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>j", "<CMD>bn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>J", "<CMD>bp<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>k", "<CMD>bd<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>K", "<CMD>bd!<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>l", "<CMD>terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>w", "<C-w>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>z", "<CMD>set spell!<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", "jk", "<C-\\><C-n>", { noremap = true })

