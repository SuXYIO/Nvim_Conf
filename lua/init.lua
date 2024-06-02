require('plugins')

-- set background based on time
local time = tonumber(os.date("%H", os.time()))
if (time > 5 and time <= 17)
then
	-- day
	vim.cmd('colorscheme gruvbox')
	vim.o.background = 'light'
end
if (time > 17 or time <= 5)
then
	-- night
	vim.cmd('colorscheme ayu')
	vim.o.background = 'dark'
end

if (time > 4 and time <= 10)
then
	-- morning
	vim.cmd('colorscheme gruvbox')
	vim.o.background = 'light'
elseif (time > 10 and time <= 16)
then
	-- noon
	vim.cmd('colorscheme ayu')
	vim.o.background = 'light'
elseif (time > 16 and time <= 22)
then
	-- afternoon
	vim.cmd('colorscheme ayu')
	vim.o.background = 'dark'
elseif (time > 22 or time <= 4)
then
	-- midnight
	vim.cmd('colorscheme gruvbox')
	vim.o.background = 'dark'
end
