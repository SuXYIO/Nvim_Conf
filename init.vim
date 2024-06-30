" Config for Neovim
" By SuXYIO
" Font: Nerdfont

" source lua
source ~/.config/nvim/lua/init.lua

" key map
	let mapleader = ";"
	imap jk <Esc>
	nmap <Space> :
	nmap <C-k> ddkP
	nmap <C-j> ddp
	vmap <C-l> "+y
	nmap <esc> <CMD>noh<CR>
	nmap <C-o> <CMD>bn<CR>
	nmap <C-i> <CMD>bd<CR>
	nmap <C-h> <CMD>vs<CR>
	nmap <C-m> <CMD>terminal<CR>
	tmap jk <C-\><C-n>

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
	" Codeium
		let g:codeium_enabled = v:false
