-- Key mappings

vim.g.mapleader = ";"
vim.keymap.set('v', '<Leader>i', '"+y', { noremap = true })
vim.keymap.set('n', '<Leader>o', '"+P', { noremap = true })
vim.keymap.set('i', '<Leader>o', '<ESC>"+Pi', { noremap = true })
vim.keymap.set('n', '<Leader>q', '<CMD>q<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>Q', '<CMD>q!<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>ww', '<CMD>w<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>wa', '<CMD>wa<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>wq', '<CMD>wq<CR>', { noremap = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("n", "<Space>", ":", { noremap = true })
vim.keymap.set("n", "<C-k>", "ddkP", { noremap = true })
vim.keymap.set("n", "<C-j>", "ddp", { noremap = true })
vim.keymap.set("n", "<esc>", "<CMD>noh<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>j", "<CMD>bn<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>h", "<CMD>bp<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>w", "<C-w>", { noremap = true })
vim.keymap.set("n", "<Leader>z", "<CMD>set spell!<CR>", { noremap = true })
vim.keymap.set("n", "zl", "<CMD>vs<CR>", { noremap = true })
vim.keymap.set("n", "zj", "<CMD>sp<CR>", { noremap = true })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })

