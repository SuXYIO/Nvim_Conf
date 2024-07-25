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
	local nvim_lspconfig = {'neovim/nvim-lspconfig'}
	local nvim_tree_plug = {'nvim-tree/nvim-tree.lua', 
		dependencies = 'nvim-tree/nvim-web-devicons',
		keys = {
			{'<C-n>', '<CMD>NvimTreeToggle<CR>'}
		},
		config = function ()
			require('nvim-tree').setup({
				git = {
					enable = true,
				},
				view = {
					side = "left",
					number = false,
					relativenumber = false,
					signcolumn = "yes",
					width = 30
				},
				renderer = {
					group_empty = true
				},
				diagnostics = {
					enable = true,
				}
			})
		end
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
		cmd = 'Telescope',
		keys = {
			{'ff', '<CMD>Telescope find_files<CR>'}
		}
	}
	local lualine_plug = {'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require('lualine').setup {
				options = {
					icons_enabled = true,
					theme = 'auto',
					component_separators = { left = '', right = ''},
					section_separators = { left = '', right = ''},
					disabled_filetypes = {},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
					disabled_filetypes = {'NvimTree'},
				},
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch', 'diff'},
					lualine_c = {'filename', 'searchcount', 'diagnostics'},
					lualine_x = {'encoding', 'fileformat', 'filetype'},
					lualine_y = {'progress'},
					lualine_z = {'location'}
				},
				tabline = {
					lualine_a = {'buffers'},
					lualine_b = {},
					lualine_c = {},
					lualine_x = {'filesize'},
					lualine_y = {'hostname'},
					lualine_z = {'os.date("%Y-%m-%d 󰤃 %H:%M:%S 󰤃 %a",os.time())'}
				},
				winbar = {},
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
	local lspsaga_plug = {'nvimdev/lspsaga.nvim',
		config = function()
			require('lspsaga').setup({
				ui = {
					border = 'single',
					devicon = true,
					title = true,
					expand = '',
					collapse = '',
					code_action = '',
					actionfix = '󰁨 ',
					imp_sign = ' '
				}
			})
			vim.keymap.set('n', '[e', '<CMD>Lspsaga diagnostic_jump_next<CR>')
			vim.keymap.set('n', '[E', '<CMD>Lspsaga diagnostic_jump_prev<CR>')
			vim.keymap.set('n', '<C-s>', '<CMD>Lspsaga outline<CR>')
			vim.keymap.set('n', '<C-a>', '<CMD>Lspsaga code_action<CR>')
		end,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		}
	}
	local cmp_plug = {'hrsh7th/nvim-cmp',
		event = "InsertEnter",
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/vim-vsnip',
			'onsails/lspkind.nvim',
		},
		config = function()
			cmp = require('cmp')
			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<CR>'] = cmp.mapping.confirm({select = true}),
					['<Tab>'] = cmp.mapping.abort(),
				}),
				sources = cmp.config.sources({
					{name = 'nvim_lsp'},
					{name = 'vsnip'},
					{name = 'codeium'}
				}, {
					{name = 'buffer'},
				}),
				formatting = {
					format = require('lspkind').cmp_format({
						mode = 'symbol_text',
						maxwidth = 50,
						ellipsis_char = '...',
						preset = 'codicons',
						symbol_map = {Codeium = " "}
					})
				}
			})
		end,
	}
	local autopairs_plug = {'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	}
	local smoothcursor_plug = {'gen740/SmoothCursor.nvim',
		config = function()
			require('smoothcursor').setup({
				type = "matrix",
				texthl = "SmoothCursor",
				linehl = nil,
				matrix = {
					head = {
						cursor = require('smoothcursor.matrix_chars'),
						texthl = {
							'SmoothCursorBlack',
						},
						linehl = nil,
					},
					body = {
						length = 6,
						cursor = require('smoothcursor.matrix_chars'),
						texthl = {
							'SmoothCursorGreen',
						},
					},
					tail = {
						cursor = nil,
						texthl = {
							'SmoothCursorBlack',
						},
					},
					unstop = false,
				}
			})
		end
	}
	local gitsign_plug = {'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup {
				signs = {
					add = { text = '|' },
					change = { text = '|' },
					delete = { text = '_' },
					topdelete = { text = '‾' },
					changedelete = { text = '~' },
					untracked = { text = '┆' },
				},
				signs_staged = {
					add = { text = '|' },
					change = { text = '|' },
					delete = { text = '_' },
					topdelete = { text = '‾' },
					changedelete = { text = '~' },
					untracked = { text = '┆' },
				},
				signs_staged_enable = true,
				signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
				numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
				linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
				word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
				watch_gitdir = {
					follow_files = true
				},
				auto_attach = true,
				attach_to_untracked = false,
				current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
					delay = 1000,
					ignore_whitespace = false,
					virt_text_priority = 100,
				},
				current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
				sign_priority = 6,
				update_debounce = 100,
				status_formatter = nil, -- Use default
				max_file_length = 40000, -- Disable if file is longer than this (in lines)
				preview_config = {
					-- Options passed to nvim_open_win
					border = 'single',
					style = 'minimal',
					relative = 'cursor',
					row = 0,
					col = 1
				},
			}
		end
	}
	local leetcode_plug = {'kawre/leetcode.nvim',
		cmd = "Leet",
		build = ":TSUpdate html",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			-- optional
			"nvim-treesitter/nvim-treesitter",
			"rcarriga/nvim-notify",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = "lc" ~= vim.fn.argv()[1],
		opts = {
			arg = "lc",
			lang = "c",
			cn = {
				enabled = true,
				translator = false,
				translate_problems = false,
			},
			image_support = false
		},
	}
	local codeium_plug = {'Exafunction/codeium.nvim',
		event = "InsertEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
				enable_chat = true;
			})
		end
	}
	local mason_plug = {'williamboman/mason.nvim',
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig"
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup_handlers {
				function (server_name)
					require("lspconfig")[server_name].setup {}
				end,
			}
		end
	}
	local transparent_plug = {'xiyaowong/transparent.nvim',
		config = function()
			require("transparent").setup({
				groups = {
					'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
					'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
					'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
					'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
					'EndOfBuffer',
				},
				extra_groups = {},
				exclude_groups = {},
			})
			vim.keymap.set('n', 'T', '<CMD>TransparentToggle<CR>')
		end
	}
-- Colorscheme
	local ayu_colorscheme = {'Luxed/ayu-vim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme ayu]])
			-- set ayucolor based on time
			local time = tonumber(os.date('%H', os.time()))
			if time > tsep4[1] and time <= tsep4[2] then
				-- morning
				vim.cmd('let ayucolor=\'mirage\'')
			elseif time <= tsep4[3] then
				-- noon
				vim.cmd('let ayucolor=\'light\'')
			elseif time <= tsep4[4] then
				-- afternoon
				vim.cmd('let ayucolor=\'mirage\'')
			else
				-- midnight
				vim.cmd('let ayucolor=\'dark\'')
			end
		end
	}
	local gruvbox_colorscheme = {'morhetz/gruvbox',
		lazy = false,
		config = function()
			vim.cmd([[colorscheme gruvbox]])
		end
	}
	local tokyonight_colorscheme = {'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			local time = tonumber(os.date('%H', os.time()))
			if time > tsep4[1] and time <= tsep4[2] then
				-- morning
				vim.cmd[[colorscheme tokyonight-storm]]
			elseif time <= tsep4[3] then
				-- noon
				vim.cmd[[colorscheme tokyonight-day]]
			elseif time <= tsep4[4] then
				-- afternoon
				vim.cmd[[colorscheme tokyonight-moon]]
			else
				-- midnight
				vim.cmd[[colorscheme tokyonight-night]]
			end
		end
	}
	local material_colorscheme = {'marko-cerovac/material.nvim',
		lazy = false,
		config = function()
			local time = tonumber(os.date('%H', os.time()))
			if time > tsep4[1] and time <= tsep4[2] then
				-- morning
				vim.g.material_style = "oceanic"
			elseif time <= tsep4[3] then
				-- noon
				vim.g.material_style = "palenight"
			elseif time <= tsep4[4] then
				-- afternoon
				vim.g.material_style = "darker"
			else
				-- midnight
				vim.g.material_style = "deep ocean"
			end
		end
	}

require('lazy').setup({
	-- plug
	nvim_lspconfig,
	nvim_tree_plug,
	todo_comments_plug,
	telescope_plug,
	lualine_plug,
	dashboard_plug,
	lspsaga_plug,
	cmp_plug,
	autopairs_plug,
	smoothcursor_plug,
	gitsign_plug,
	leetcode_plug,
	codeium_plug,
	mason_plug,
	transparent_plug,
	-- colorscheme
	ayu_colorscheme,
	gruvbox_colorscheme,
	tokyonight_colorscheme,
	material_colorscheme,
})
