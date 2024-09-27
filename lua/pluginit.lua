-- Lazy
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Lazy config
require('lazy').setup({
	spec = "plugins",
	defaults = {
		lazy = true
	},
	performance = {
		rtp = {
			disabled_plugins = {
				'gzip',
				'zipPlugin',
				'tarPlugin',
				'tohtml',
				'tutor',
				'editorconfig',
				'rplugin',
				'man',
				-- 'netrwPlugin',
				-- 'spellfile',
				-- 'shada',
				-- 'matchit',
				-- 'matchparen',
			}
		}
	}
})

