require('plugins')

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
