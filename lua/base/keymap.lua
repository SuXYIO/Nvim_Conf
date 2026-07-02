-- Key mappings

-- leader
vim.g.mapleader = ";"

-- move
vim.keymap.set("n", "K", "5k", { desc = "move up 5 lines" })
vim.keymap.set("n", "J", "5j", { desc = "move down 5 lines" })
vim.keymap.set("v", "K", "5k", { desc = "move up 5 lines" })
vim.keymap.set("v", "J", "5j", { desc = "move down 5 lines" })

-- copy & paste
vim.keymap.set("v", "<D-c>", '"+y', { desc = "system copy" })
vim.keymap.set("v", "<Leader>i", '"+y', { desc = "system copy insert" })
vim.keymap.set("n", "<D-v>", '"+p', { desc = "system paste" })
vim.keymap.set("i", "<D-v>", '<ESC>"+pi', { desc = "system paste insert" })
vim.keymap.set("n", "<Leader>o", '"+p', { desc = "system paste normal" })

-- save & quit
vim.keymap.set("n", "<Leader>q", "<CMD>q<CR>", { desc = "quit" })
vim.keymap.set("n", "<Leader>ww", "<CMD>w<CR>", { desc = "write" })
vim.keymap.set("n", "<Leader>wa", "<CMD>wa<CR>", { desc = "write all" })
vim.keymap.set("n", "<Leader>wq", "<CMD>wq<CR>", { desc = "write & quit" })

-- mode swap
vim.keymap.set("i", "jk", "<Esc>", { desc = "insert quit" })
vim.keymap.set("n", "<Space>", ":", { desc = "command enter" })
vim.keymap.set("v", "<Space>", ":", { desc = "command enter visual" })
vim.keymap.set("t", "<Leader><Esc>", "<C-\\><C-n>", { desc = "terminal quit" })

-- edit
vim.keymap.set("n", "<A-k>", "<CMD>m .-2<CR>V=", { desc = "move line up" })
vim.keymap.set("n", "<A-j>", "<CMD>m .+1<CR>V=", { desc = "move line down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move selected lines up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move selected lines down" })

-- buffer & window & tab & stuff
vim.keymap.set("n", "<Leader>k", "<CMD>bd<CR>", { desc = "delete buffer" })
vim.keymap.set("n", "<Leader>w", "<C-w>", { desc = "choose window" })
vim.keymap.set("n", "zl", "<CMD>vs<CR>", { desc = "vertical split" })
vim.keymap.set("n", "zj", "<CMD>sp<CR>", { desc = "split" })

-- other
vim.keymap.set("n", "<Leader>l", "<CMD>terminal<CR>", { desc = "open terminal" })
vim.keymap.set("n", "<Leader>n", "<CMD>noh<CR>", { desc = "no highlight" })
vim.keymap.set("t", "<D-d>", "<C-d>", { desc = "send EOF" })
