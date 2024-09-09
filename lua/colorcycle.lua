-- set background & colorscheme

local schemetimecycle = false
local bgtimecycle = true

local bglist = {'light', 'dark'}
local schemelist = {'kanagawa', 'nightfox', 'lackluster'}

if timecycle == true then
	local timeh = tonumber(os.date("%H", os.time()))
	if timeh <= tsep6[1] then
		vim.cmd('colorscheme tokyonight')
	elseif timeh <= tsep6[2] then
		vim.cmd('colorscheme gruvbox')
	elseif timeh <= tsep6[3] then
		vim.cmd('colorscheme ayu')
	elseif timeh <= tsep6[4] then
		vim.cmd('colorscheme tokyonight')
	elseif timeh <= tsep6[5] then
		vim.cmd('colorscheme material')
	else
		vim.cmd('colorscheme tokyonight')
	end
end

if bgtimecycle == true then
	local timeh = tonumber(os.date("%H", os.time()))
	if timeh <= tsep2[1] or timeh >= tsep2[2] then
		vim.o.background = 'dark'
	else
		vim.o.background = 'light'
	end
end

if schemetimecycle == false then
	math.randomseed(os.time())
	vim.cmd(string.format('colorscheme %s', schemelist[math.random(1, #schemelist)]))
end

if bgtimecycle == false then
	math.randomseed(os.time())
	vim.o.background = bglist[math.random(1, #bglist)]
end
