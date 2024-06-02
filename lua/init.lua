require('plugins')

-- set background based on time
local time = tonumber(os.date("%H", os.time()))
if (time > 3 and time <= 9)
then
	-- morning
	vim.cmd('colorscheme gruvbox')
	vim.o.background = 'light'
elseif (time > 9 and time <= 15)
then
	-- noon
	vim.cmd('colorscheme ayu')
	vim.o.background = 'light'
elseif (time > 15 and time <= 21)
then
	-- afternoon
	vim.cmd('colorscheme ayu')
	vim.o.background = 'dark'
elseif (time > 21 or time <= 3)
then
	-- midnight
	vim.cmd('colorscheme gruvbox')
	vim.o.background = 'dark'
end
