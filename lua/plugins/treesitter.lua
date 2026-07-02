return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		-- autostart treesitter, modified from https://github.com/nvim-treesitter/nvim-treesitter/discussions/8546#discussioncomment-16411757
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "*" },
			desc = "treesitter autostart",
			callback = function(args)
				local ft = vim.bo[args.buf].filetype
				local lang = vim.treesitter.language.get_lang(ft)

				if not vim.treesitter.language.add(lang) then
					local available = vim.g.ts_available or require("nvim-treesitter").get_available()
					if not vim.g.ts_available then
						vim.g.ts_available = available
					end
					if vim.tbl_contains(available, lang) then
						vim.notify(string.format("treesitter for %s not found", lang), vim.log.levels.WARN)
					end
				end

				if vim.treesitter.language.add(lang) then
					vim.treesitter.start(args.buf, lang)
					-- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
					vim.wo[0][0].foldmethod = "expr"
				end
			end,
		})
	end,
}
