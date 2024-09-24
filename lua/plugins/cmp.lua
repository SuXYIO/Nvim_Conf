return {'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'onsails/lspkind.nvim',
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
				['<Tab>'] = function(fallback)
					if not cmp.select_next_item() then
						if vim.bo.buftype ~= 'prompt' and has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end
				end,
				['<S-Tab>'] = function(fallback)
					if not cmp.select_prev_item() then
						if vim.bo.buftype ~= 'prompt' and has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end
				end
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
				}),
			}
		})
	end,
}
