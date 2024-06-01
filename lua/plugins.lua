-- Lazyvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Functional
	local vim_airline_plug = {'vim-airline/vim-airline', dependencies = 'vim-airline/vim-airline-themes'}
	local nvim_treesitter_plug = {"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { 'c', 'markdown', 'lua', 'vim', 'vimdoc' },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },  
			})
		end
	}
	local nvim_tree_plug = {'nvim-tree/nvim-tree.lua', dependencies = 'nvim-tree/nvim-web-devicons'}
	local vim_floaterm_plug = {'voldikss/vim-floaterm'}
	local bufferline_plug = {'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'}
	local codeium_plug = {'Exafunction/codeium.vim'}
	local todo_comments_plug = {'folke/todo-comments.nvim', dependencies = "nvim-lua/plenary.nvim"}
-- Colorschemes
	-- main colorscheme
	local ayu_colorscheme = {'Luxed/ayu-vim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[let ayucolor="mirage"]])
			vim.cmd([[colorscheme ayu]])
		end
	}
	-- other colorschemes
	local gruvbox_colorscheme = {'morhetz/gruvbox', lazy = true}
	local papercolor_colorscheme = {'NLKNguyen/papercolor-theme', lazy = true}
require("lazy").setup({
	vim_airline_plug,
	nvim_treesitter_plug,
	nvim_tree_plug,
	vim_floaterm_plug,
	bufferline_plug,
	codeium_plug,
	todo_comments_plug,
	ayu_colorscheme,
	gruvbox_colorscheme,
	papercolor_colorscheme,
})
