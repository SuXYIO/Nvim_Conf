-- set background & colorscheme

math.randomseed(os.time())

local function getBgTime()
	-- Background
	-- return string 'dark' or 'light'

	-- set using timesep
	local timeh = tonumber(os.date("%H", os.time()))
	if timeh <= Tsep2[1] or timeh >= Tsep2[2] then
		return "dark"
	else
		return "light"
	end
end

local function getColorsRand()
	-- Colorscheme
	-- return string of a colorscheme name i.e. 'default'

	-- set using random
	local bglist = {
		"duskfox",
		"carbonfox",
		"kanagawa-wave",
		"catppuccin-mocha",
		"everforest",
		"gruvbox",
		"ayu",
	}
	return bglist[math.random(1, #bglist)]
end

local function getLinesepRand()
	-- Line separator
	-- return {component_separators, section_separators}

	-- set using random
	local lineseplist = {
		{
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		{
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		{
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
	}
	return lineseplist[math.random(1, #lineseplist)]
end

-- vim.o.background = getBgTime()
vim.o.background = "dark"
vim.cmd(string.format("colorscheme %s", getColorsRand()))
LineSep = getLinesepRand()
