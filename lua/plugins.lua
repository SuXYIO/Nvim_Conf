-- Lazyvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plug
	local nvim_treesitter_plug = {'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		config = function ()
			local configs = require('nvim-treesitter.configs')
			configs.setup({
				ensure_installed = { 'c', 'markdown', 'lua', 'vim', 'vimdoc' },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
	local nvim_tree_plug = {'nvim-tree/nvim-tree.lua', 
		dependencies = 'nvim-tree/nvim-web-devicons',
		keys = {
			{'<C-n>', '<CMD>NvimTreeToggle<CR>'}
		},
		config = function ()
			require('nvim-tree').setup({
				sort = {
					sorter = 'case_sensitive',
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})
		end
	}
	local codeium_plug = {'Exafunction/codeium.vim',
		lazy = true
	}
	local todo_comments_plug = {'folke/todo-comments.nvim', 
		dependencies = 'nvim-lua/plenary.nvim',
		config = function()
			require('todo-comments').setup {
				signs = true, -- show icons in the signs column
				sign_priority = 8, -- sign priority
				-- keywords recognized as todo comments
				keywords = {
					FIX = {
						icon = ' ', -- icon used for the sign, and in search results
						color = 'error', -- can be a hex color, or a named color (see below)
						alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE', 'ERROR' }, -- a set of other keywords that all map to this FIX keywords
						-- signs = false, -- configure signs for some keywords individually
					},
					TODO = { icon = '󰉹 ', color = 'info' },
					HACK = { icon = ' ', color = 'warning' },
					WARN = { icon = ' ', color = 'warning', alt = { 'WARNING' } },
					PERF = { icon = ' ', color = 'hint', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
					NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
					TEST = { icon = ' ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
				},
				 -- Test Style
				 -- FIX: Test Style
				 -- TODO: Test Style
				 -- HACK: Test Style
				 -- WARN: Test Style
				 -- PERF: Test Style
				 -- NOTE: Test Style
				 -- TEST: Test Style
				gui_style = {
					fg = 'NONE', -- The gui style to use for the fg highlight group.
					bg = 'BOLD', -- The gui style to use for the bg highlight group.
				},
				merge_keywords = true, -- when true, custom keywords will be merged with the defaults
				-- highlighting of the line containing the todo comment
				-- * before: highlights before the keyword (typically comment characters)
				-- * keyword: highlights of the keyword
				-- * after: highlights after the keyword (todo text)
				highlight = {
					multiline = true, -- enable multine todo comments
					multiline_pattern = '^.', -- lua pattern to match the next multiline from the start of the matched keyword
					multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
					before = '', -- 'fg' or 'bg' or empty
					keyword = 'wide', -- 'fg', 'bg', 'wide', 'wide_bg', 'wide_fg' or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
					after = 'fg', -- 'fg' or 'bg' or empty
					pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
					comments_only = true, -- uses treesitter to match keywords in comments only
					max_line_len = 400, -- ignore lines longer than this
					exclude = {}, -- list of file types to exclude highlighting
				},
				-- list of named colors where we try to extract the guifg from the
				-- list of highlight groups or use the hex color if hl not found as a fallback
				colors = {
					error = { 'DiagnosticError', 'ErrorMsg', '#DC2626' },
					warning = { 'DiagnosticWarn', 'WarningMsg', '#FBBF24' },
					info = { 'DiagnosticInfo', '#2563EB' },
					hint = { 'DiagnosticHint', '#10B981' },
					default = { 'Identifier', '#7C3AED' },
					test = { 'Identifier', '#FF00FF' }
				},
				search = {
					command = 'rg',
					args = {
						'--color=never',
						'--no-heading',
						'--with-filename',
						'--line-number',
						'--column',
					},
					-- regex that will be used to match keywords.
					-- don't replace the (KEYWORDS) placeholder
					pattern = [[\b(KEYWORDS):]], -- ripgrep regex
					-- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
				},
			}
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			vim.opt.termguicolors = true
		end
	}
	local telescope_plug = {'nvim-telescope/telescope.nvim',
		dependencies = 'nvim-lua/plenary.nvim',
		keys = {
			{'ff', '<CMD>Telescope find_files<CR>'}
		}
	}
	local ale_plug = {'dense-analysis/ale',
		config = function()
			-- Configuration goes here.
			vim.g.ale_ruby_rubocop_auto_correct_all = 1
			vim.g.ale_linters = {
				lua = {'lua_language_server'}
			}
		end
	}
	local dressing_plug = {'stevearc/dressing.nvim'}
	local lualine_plug = {'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require('lualine').setup {
				options = {
					icons_enabled = true,
					theme = 'auto',
					component_separators = { left = '', right = ''},
					section_separators = { left = '', right = ''},
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					}
				},
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_c = {'filename'},
					lualine_x = {'encoding', 'fileformat', 'filetype'},
					lualine_y = {'progress'},
					lualine_z = {'location'}
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = {'filename'},
					lualine_x = {'location'},
					lualine_y = {},
					lualine_z = {}
				},
				tabline = {
					lualine_a = {'os.date("%Y-%m-%d | %H:%M:%S | %a",os.time())', 'data', 'require\'lsp-status\'.status()'},
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {'filesize'},
					lualine_z = {'hostname'}
				},
				winbar = {
					lualine_a = {'buffers'},
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = {}
				},
				inactive_winbar = {},
				extensions = {}
			}
		end
	}
	local dashboard_plug = {'nvimdev/dashboard-nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'hyper',
				config = {
					header = {
						' _______             ____   ____.__         ',
						' \\      \\   ____  ___\\   \\ /   /|__| _____  ',
						' /   |   \\_/ __ \\/  _ \\   Y   / |  |/     \\ ',
						'/    |    \\  ___(  <_> )     /  |  |  Y Y  \\',
						'\\____|__  /\\___  >____/ \\___/   |__|__|_|  /',
						'        \\/     \\/                        \\/ '
					},
					week_header = {enable = false},
					shortcut = {
						{desc = '󰚰 Update', group = '@property', action = 'Lazy update', key = 'u'},
						{icon = ' ', icon_hl = '@variable', desc = 'Files', group = 'Label', action = 'Telescope find_files', key = 'f'};
						{icon = ' ', icon_hl = '@variable', desc = 'Todo', group = 'Label', action = 'TodoTelescope', key = 't'}
					},
					packages = {enable = true},
					footer = {}
				}
			}
		end,
	}
	local lazygit_plug = {'kdheepak/lazygit.nvim',
		cmd = {
			'LazyGit',
			'LazyGitConfig',
			'LazyGitCurrentFile',
			'LazyGitFilter',
			'LazyGitFilterCurrentFile',
		},
		-- optional for floating window border decoration
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{'<C-g>', '<cmd>LazyGit<cr>', desc = 'LazyGit'}
		}
	}
	local cmp_plug = {'hrsh7th/nvim-cmp',
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		},
		config = function()
			cmp = require('cmp')
			cmp.setup({
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<CR>'] = cmp.mapping.confirm({select = true}),
				}),
				sources = cmp.config.sources({
						{name = 'nvim_lsp'},
					},
					{
						{name = 'buffer'},
				})
			})
		end,
	}
-- Colorscheme
	-- main colorscheme
	local ayu_colorscheme = {'Luxed/ayu-vim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme ayu]])
			-- set ayucolor based on time
			local time = tonumber(os.date('%H', os.time()))
			if (time > 2 and time <= 8)
			then
				-- morning
				vim.cmd('let ayucolor=\'mirage\'')
			elseif (time > 8 and time <= 14)
			then
				-- noon
				vim.cmd('let ayucolor=\'light\'')
			elseif (time > 14 and time <= 20)
			then
				-- afternoon
				vim.cmd('let ayucolor=\'mirage\'')
			elseif (time > 20 or time <= 2)
			then
				-- midnight
				vim.cmd('let ayucolor=\'dark\'')
			end
		end
	}
	-- other colorschemes
	local gruvbox_colorscheme = {'morhetz/gruvbox', lazy = false}

require('lazy').setup({
	-- plug
	nvim_treesitter_plug,
	nvim_tree_plug,
	codeium_plug,
	todo_comments_plug,
	telescope_plug,
	ale_plug,
	dressing_plug,
	lualine_plug,
	dashboard_plug,
	lazygit_plug,
	cmp_plug,
	-- colorscheme
	ayu_colorscheme,
	gruvbox_colorscheme,
	papercolor_colorscheme,
})
