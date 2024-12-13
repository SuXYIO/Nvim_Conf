return {'iamcco/markdown-preview.nvim',
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	config = function()
		vim.keymap.set('n', '<Leader>x', '<CMD>MarkdownPreviewToggle<CR>', { noremap = true, desc = 'markdown preview' })
	end
}
