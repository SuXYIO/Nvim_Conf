-- Define diagnostic signs
local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}
for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

-- Define on_attach and capabilities
local on_attach = function()
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local status_cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status_cmp_ok then
	capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Setup servers
require("nvim-lsp-installer").setup {}
local lspconfig = require('lspconfig')
local servers = {'clangd', 'pyright', 'tsserver', 'lua_ls'}
for _, lsp in pairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilites = capabilities,
	}
end
