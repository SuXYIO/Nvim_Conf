-- Autocommands

-- LazyDash
-- Plugins not to load in dashboard
vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        local function _trigger()
            vim.api.nvim_exec_autocmds("User", { pattern = "LazyDash" })
        end

        if vim.bo.filetype == "dashboard" or vim.bo.filetype == "snacks_dashboard" then
            vim.api.nvim_create_autocmd("BufRead", {
                once = true,
                callback = _trigger,
            })
        else
            _trigger()
        end
    end,
})

