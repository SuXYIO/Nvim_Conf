" Config for Neovim
" By SuXYIO
" Font: Nerdfont

" source lua
" WARN: might have to reset this in Windows or if you are using another config path
source ~/.config/nvim/lua/init.lua

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
