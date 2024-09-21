return {'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/vim-vsnip',
		'onsails/lspkind.nvim',
	},
	config = function()
		cmp = require('cmp')
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<CR>'] = cmp.mapping.confirm({select = true}),
				['<Tab>'] = cmp.mapping.abort(),
			}),
			sources = cmp.config.sources({
				{name = 'nvim_lsp'},
				{name = 'vsnip'},
				{name = 'codeium'}
			}, {
				{name = 'buffer'},
			}),
			formatting = {
				format = require('lspkind').cmp_format({
					mode = 'symbol_text',
					maxwidth = 50,
					ellipsis_char = '...',
					preset = 'codicons',
					symbol_map = {Codeium = " "}
				})
			}
		})
	end,
}
