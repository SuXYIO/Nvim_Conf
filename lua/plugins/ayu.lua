return {'Luxed/ayu-vim',
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme ayu]])
		-- set ayucolor based on time
		local time = tonumber(os.date('%H', os.time()))
		if time > tsep4[1] and time <= tsep4[2] then
			-- morning
			vim.cmd('let ayucolor=\'mirage\'')
		elseif time <= tsep4[3] then
			-- noon
			vim.cmd('let ayucolor=\'light\'')
		elseif time <= tsep4[4] then
			-- afternoon
			vim.cmd('let ayucolor=\'mirage\'')
		else
			-- midnight
			vim.cmd('let ayucolor=\'dark\'')
		end
	end
}
