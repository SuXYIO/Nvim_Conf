-- set background & colorscheme

local function bgfunc()
	-- Background
	-- return string 'dark' or 'light'

	-- set using timesep
	local timeh = tonumber(os.date("%H", os.time()))
	if timeh <= tsep2[1] or timeh >= tsep2[2] then
		return 'dark'
	else
		return 'light'
	end
end

local function csfunc()
	-- Colorscheme
	-- return string of a colorscheme name i.e. 'default'

	local bglist = {'duskfox', 'kanagawa-dragon', 'ayu-dark', 'lackluster-hack'}
	math.randomseed(os.time())
	return bglist[math.random(1, #bglist)]
end

vim.o.background = bgfunc()
vim.cmd(string.format('colorscheme %s', csfunc()))

