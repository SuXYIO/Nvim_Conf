-- set background based on time
local time = tonumber(os.date("%H", os.time()))

if time <= 4 or time >= 20 then
	vim.cmd('colorscheme tokyonight')
	vim.o.background = 'dark'
elseif time <= 8 then
	vim.cmd('colorscheme gruvbox')
	vim.o.background = 'dark'
elseif time <= 12 then
	vim.cmd('colorscheme tokyonight')
	vim.o.background = 'light'
elseif time <= 16 then
	vim.cmd('colorscheme ayu')
	vim.o.background = 'light'
else
	vim.cmd('colorscheme tokyonight')
	vim.o.background = 'dark'
end
