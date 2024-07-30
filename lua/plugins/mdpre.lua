MDPre = {'iamcco/markdown-preview.nvim',
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function() vim.fn["mkdp#util#install"]() end,
	config = function()
		vim.keymap.set('n', '<C-b>', '<CMD>MarkdownPreviewToggle<CR>')
	end
}