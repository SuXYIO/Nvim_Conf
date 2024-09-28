return {'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'onsails/lspkind.nvim'
	},
	config = function()
		local cmp = require('cmp')
		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered()
			},
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<CR>'] = cmp.mapping.confirm({select = true}),
				['<Esc>'] = cmp.mapping.abort(),
				['<Leader><Space>'] = cmp.mapping.complete()
			}),
			sources = cmp.config.sources({
				{name = 'nvim_lsp'},
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
				}),
			}
		})
	end,
}
