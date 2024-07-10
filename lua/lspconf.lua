local M = {}

M.setup = function()
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}
	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()
local status_cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status_cmp_ok then
	M.capabilities = cmp_nvim_lsp.default_capabilities(M.capabilities)
end

M.setup_lsp_clients = function()
	local lspconfig = require("lspconfig")
	lspconfig.clangd.setup({
		capabilities = M.capabilities,
	})
	lspconfig.pyright.setup({
		capabilities = M.capabilities,
	})
end

M.setup()
M.setup_lsp_clients()

return M
