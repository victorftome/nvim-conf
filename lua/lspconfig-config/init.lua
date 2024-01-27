local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local langservers = { "clangd", "pyright", "bashls", "tsserver", "rust_analyzer", "html" }

for _, server in ipairs(langservers) do
	require("lspconfig")[server].setup({
		capabilities = capabilities,
	})
end
