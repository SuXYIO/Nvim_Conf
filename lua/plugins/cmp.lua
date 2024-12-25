local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
end
return {
	'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'onsails/lspkind.nvim'
	},
	opts = function ()
		local cmp = require('cmp')
		return {
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
				["<Tab>"] = vim.schedule_wrap(function(fallback)
					if cmp.visible() and has_words_before() then
						cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
					else
						fallback()
					end
				end),
				["<S-Tab>"] = vim.schedule_wrap(function(fallback)
					if cmp.visible() and has_words_before() then
						cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
					else
						fallback()
					end
				end),
				['<CR>'] = cmp.mapping.confirm({select = true}),
				['<Esc>'] = cmp.mapping.abort()
			}),
			sources = cmp.config.sources({
				{name = 'codeium'},
				{name = 'nvim_lsp'}
			}, {
				{name = 'buffer'}
			}),
			formatting = {
				format = require('lspkind').cmp_format({
					mode = 'symbol_text',
					maxwidth = 50,
					ellipsis_char = '...',
					preset = 'codicons',
					symbol_map = {
						Codeium = " "
					}
				}),
			}
		}
	end
}
