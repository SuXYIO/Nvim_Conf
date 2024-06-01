return {
	-- Functional
		{'vim-airline/vim-airline', dependencies = 'vim-airline/vim-airline-themes'}
		{
		"nvim-treesitter/nvim-treesitter",
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
		{'nvim-tree/nvim-tree.lua', dependencies = 'nvim-tree/nvim-web-devicons'}
		{'voldikss/vim-floaterm'}
		{'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'}
		{'Exafunction/codeium.vim'}
		{'folke/todo-comments.nvim', dependencies = { "nvim-lua/plenary.nvim" },
			-- opts = {}
		}
	-- Colorschemes
		-- main colorscheme
		{
			'Luxed/ayu-vim',
			lazy = false,
			priority = 1000,
			config = function()
				vim.cmd([[let ayucolor="mirage"]])
				vim.cmd([[colorscheme ayu]])
			end
		}
		-- other colorschemes
		{'NLKNguyen/papercolor-theme', lazy = true}
		{'morhetz/gruvbox', lazy = true}
}
