-- Self defined commands

-- Convert buffer raw to hex
-- Uses xxd
vim.api.nvim_create_user_command("Hex", function(opts)
	if opts.bang then
		vim.cmd("%!xxd -r " .. opts.args)
	else
		vim.cmd("%!xxd " .. opts.args)
	end
end, {
	nargs = "*",
	bang = true,
	desc = "Convert buffer raw to hex",
})
