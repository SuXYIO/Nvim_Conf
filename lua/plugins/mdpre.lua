return {
	'iamcco/markdown-preview.nvim',
	cmd = { "MarkdownPreviewToggle" },
	ft = { "markdown" },
	keys = {
		{'<Leader>x', '<CMD>MarkdownPreviewToggle<CR>', mode = n, ft = 'markdown', noremap = true, desc = 'markdown preview'}
	}
}
