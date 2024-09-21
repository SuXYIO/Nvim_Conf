return {'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		local time = tonumber(os.date('%H', os.time()))
		if time > tsep4[1] and time <= tsep4[2] then
			-- morning
			vim.cmd[[colorscheme tokyonight-storm]]
		elseif time <= tsep4[3] then
			-- noon
			vim.cmd[[colorscheme tokyonight-day]]
		elseif time <= tsep4[4] then
			-- afternoon
			vim.cmd[[colorscheme tokyonight-moon]]
		else
			-- midnight
			vim.cmd[[colorscheme tokyonight-night]]
		end
	end
}
