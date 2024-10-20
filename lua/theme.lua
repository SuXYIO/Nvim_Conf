-- set background & colorscheme

math.randomseed(os.time())

local function getBackground()
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

local function getColorscheme()
	-- Colorscheme
	-- return string of a colorscheme name i.e. 'default'

	-- set using random
	local bglist = {'duskfox', 'kanagawa-dragon', 'ayu-dark', 'lackluster-hack'}
	return bglist[math.random(1, #bglist)]
end

local function getLineSep()
	-- Line seperator
	-- return {component_separators, section_separators}

	-- set using random
	local lineseplist = {
		{
			component_separators = { left = '', right = '' },
			section_separators = { left = '', right = '' },
		},
		{
			component_separators = { left = '', right = '' },
			section_separators = { left = '', right = '' },
		}
	}
	return lineseplist[math.random(1, #lineseplist)]
end

vim.o.background = getBackground()
vim.cmd(string.format('colorscheme %s', getColorscheme()))
LineSep = getLineSep()

