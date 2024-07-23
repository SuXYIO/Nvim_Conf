-- set background & colorscheme

local timecycle = false

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

local bglist = {'dark'}	--{'light', 'dark'}
local schemelist = {'tokyonight', 'material'}

if timecycle == false then
	math.randomseed(os.time())
	vim.o.background = bglist[math.random(1, #bglist)]
	vim.cmd(string.format('colorscheme %s', schemelist[math.random(1, #schemelist)]))
end
