" Config for Neovim
" By SuXY
" Font: Nerdfont
" Plug_Manager: Vim-Plug

" key map
	let mapleader = ","
	imap jk <Esc>
	nmap <Space> :
	" move line
		nmap <C-k> ddkP
		nmap <C-j> ddp
	" system clipboard
		vmap <C-l> "+y
	" other
		nmap <esc> :noh<CR>
	" plugin key maps
		nmap <C-n> :NvimTreeToggle<CR>
		nmap <C-m> :FloatermNew<CR>
		nmap <C-o> :bn<CR>
		nmap <C-i> :bd<CR>

" self-defined commands
	command Hex %!xxd
	command Dehex %!xxd -r

" vim-plug
	call plug#begin('~/.vim/plugged')
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'nvim-treesitter/nvim-treesitter'
		Plug 'nvim-tree/nvim-tree.lua'
		Plug 'nvim-tree/nvim-web-devicons'
		Plug 'voldikss/vim-floaterm'
		Plug 'folke/todo-comments.nvim'
		Plug 'Exafunction/codeium.vim'
		Plug 'NLKNguyen/papercolor-theme'
	call plug#end()

" lua
lua << EOF
		-- treesitter
		require('nvim-treesitter.configs').setup {
			ensure_installed = { "c" },
			highlight = {
				enable = true,
			},
			rainbow = {
				enable = true,
			}
		}
		-- todo comments
		require("todo-comments").setup {
			signs = true, -- show icons in the signs column
			sign_priority = 8, -- sign priority
			-- keywords recognized as todo comments
			keywords = {
				FIX = {
					icon = " ", -- icon used for the sign, and in search results
					color = "error", -- can be a hex color, or a named color (see below)
					alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "ERROR" }, -- a set of other keywords that all map to this FIX keywords
					-- signs = false, -- configure signs for some keywords individually
				},
				TODO = { icon = "󰉹 ", color = "info" },
				HACK = { icon = " ", color = "warning" },
				WARN = { icon = " ", color = "warning", alt = { "WARNING" } },
				PERF = { icon = " ", color = "hint", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
				NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
				TEST = { icon = " ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
			},
			 -- FIX:
			 -- TODO:
			 -- HACK:
			 -- WARN:
			 -- PERF:
			 -- NOTE:
			 -- TEST:
			gui_style = {
				fg = "NONE", -- The gui style to use for the fg highlight group.
				bg = "BOLD", -- The gui style to use for the bg highlight group.
			},
			merge_keywords = true, -- when true, custom keywords will be merged with the defaults
			-- highlighting of the line containing the todo comment
			-- * before: highlights before the keyword (typically comment characters)
			-- * keyword: highlights of the keyword
			-- * after: highlights after the keyword (todo text)
			highlight = {
				multiline = true, -- enable multine todo comments
				multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
				multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
				before = "", -- "fg" or "bg" or empty
				keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
				after = "fg", -- "fg" or "bg" or empty
				pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
				comments_only = true, -- uses treesitter to match keywords in comments only
				max_line_len = 400, -- ignore lines longer than this
				exclude = {}, -- list of file types to exclude highlighting
			},
			-- list of named colors where we try to extract the guifg from the
			-- list of highlight groups or use the hex color if hl not found as a fallback
			colors = {
				error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
				warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
				info = { "DiagnosticInfo", "#2563EB" },
				hint = { "DiagnosticHint", "#10B981" },
				default = { "Identifier", "#7C3AED" },
				test = { "Identifier", "#FF00FF" }
			},
			search = {
				command = "rg",
				args = {
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
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
		-- nvim-tree
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
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
EOF

" settings
	" general
		set number
		set termguicolors
		set termencoding=utf-8
		set noeb
		set ruler
		set cursorline
		set showcmd
		set history=64
		set ttimeoutlen=0
		syntax sync minlines=256
		let g:codeium_filetypes = {
			\ "text": v:false,
		\ }
	" indent
		set autoindent
		set tabstop=4
		set shiftwidth=4
		set softtabstop=4
		set shiftwidth=4
		set nofoldenable
		filetype indent on
		set list lcs=tab:\|\ 
	" filetype
		filetype on
	" search
		set hlsearch
		set incsearch
	" cache
		set nobackup
	" airline
		let g:airline_powerline_fonts = 1
		let g:airline#extensions#tabline#enabled = 1
		let g:airline#extensions#tabline#buffer_nr_show = 1
		let g:airline_left_sep = ''
		let g:airline_right_sep = ''
	" Codeium
		let g:codeium_enabled = v:false

" theme
	colorscheme PaperColor
	let g:airline_theme='papercolor'
lua << EOF
	-- set background based on time
	local time = tonumber(os.date("%H", os.time()))
	if (time > 5 and time <= 17)
	then
		-- day
		vim.o.background = 'light'
	end
	if (time > 17 or time <= 5)
	then
		-- night
		vim.o.background = 'dark'
	end
EOF
