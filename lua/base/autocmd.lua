-- Autocommands

-- Iceload
-- NOTE: This code is from IceNvim (https://github.com/Shaobin-Jiang/IceNvim)
-- For VeryLazy loading plugins only when not dashboard buffer, even if a non-dashboard buffer is opened on startup
vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        local function _trigger()
            vim.api.nvim_exec_autocmds("User", { pattern = "IceLoad" })
        end

        if vim.bo.filetype == "dashboard" then
            vim.api.nvim_create_autocmd("BufRead", {
                once = true,
                callback = _trigger,
            })
        else
            _trigger()
        end
    end,
})

