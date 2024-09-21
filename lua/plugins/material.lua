return {'marko-cerovac/material.nvim',
	lazy = false,
	config = function()
		local time = tonumber(os.date('%H', os.time()))
		if time > tsep4[1] and time <= tsep4[2] then
			-- morning
			vim.g.material_style = "oceanic"
		elseif time <= tsep4[3] then
			-- noon
			vim.g.material_style = "palenight"
		elseif time <= tsep4[4] then
			-- afternoon
			vim.g.material_style = "darker"
		else
			-- midnight
			vim.g.material_style = "deep ocean"
		end
	end
}
