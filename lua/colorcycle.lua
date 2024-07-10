-- set background & colorscheme

timecycle = false

if timecycle == true then
	local timeh = tonumber(os.date("%H", os.time()))
	if timeh <= tsep6[1] then
		vim.cmd('colorscheme tokyonight')
		vim.o.background = 'dark'
	elseif timeh <= tsep6[2] then
		vim.cmd('colorscheme gruvbox')
		vim.o.background = 'dark'
	elseif timeh <= tsep6[3] then
		vim.cmd('colorscheme ayu')
		vim.o.background = 'light'
	elseif timeh <= tsep6[4] then
		vim.cmd('colorscheme tokyonight')
		vim.o.background = 'light'
	elseif timeh <= tsep6[5] then
		vim.cmd('colorscheme material')
		vim.o.background = 'dark'
	else
		vim.cmd('colorscheme tokyonight')
		vim.o.background = 'dark'
	end
end

if timecycle == false then
	math.randomseed(os.time())
	if math.random(0, 1) == 0 then
		vim.o.background = 'light'
	else
		vim.o.background = 'dark'
	end
	local scheme = math.random(0, 3)
	if scheme == 0 then
		vim.cmd('colorscheme ayu')
	elseif scheme == 1 then
		vim.cmd('colorscheme gruvbox')
	elseif scheme == 2 then
		vim.cmd('colorscheme tokyonight')
	elseif scheme == 3 then
		vim.cmd('colorscheme material')
	end
end
