-- Key mappings

vim.g.mapleader = ";"
vim.keymap.set('v', '<Leader>i', '"+y', { noremap = true, desc = 'system copy' })
vim.keymap.set('n', '<Leader>o', '"+P', { noremap = true, desc = 'system paste' })
vim.keymap.set('i', '<Leader>o', '<ESC>"+Pi', { noremap = true, desc = 'system paste' })
vim.keymap.set('n', '<Leader>q', '<CMD>q<CR>', { noremap = true, desc = 'quit' })
vim.keymap.set('n', '<Leader>ww', '<CMD>w<CR>', { noremap = true, desc = 'write' })
vim.keymap.set('n', '<Leader>wa', '<CMD>wa<CR>', { noremap = true, desc = 'write all' })
vim.keymap.set('n', '<Leader>wq', '<CMD>wq<CR>', { noremap = true, desc = 'write & quit' })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, desc = 'insert quit' })
vim.keymap.set("n", "<Space>", ":", { noremap = true, desc = 'command enter' })
vim.keymap.set("n", "<C-k>", "ddkP", { noremap = true, desc = 'move line up' })
vim.keymap.set("n", "<C-j>", "ddp", { noremap = true, desc = 'move line down' })
vim.keymap.set("n", "<esc>", "<CMD>noh<CR>", { noremap = true, desc = 'no highlight' })
vim.keymap.set("n", "<Leader>j", "<CMD>bn<CR>", { noremap = true, desc = 'next buffer' })
vim.keymap.set("n", "<Leader>h", "<CMD>bp<CR>", { noremap = true, desc = 'previous buffer' })
vim.keymap.set("n", "<Leader>w", "<C-w>", { noremap = true, desc = 'choose window' })
vim.keymap.set("n", "zl", "<CMD>vs<CR>", { noremap = true, desc = 'vertical split' })
vim.keymap.set("n", "zj", "<CMD>sp<CR>", { noremap = true, desc = 'split' })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true, desc = 'terminal quit' })

