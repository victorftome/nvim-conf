local capabilities = require("cmp_nvim_lsp").default_capabilities()
local langservers = { "rust_analyzer", "clangd", "pyright" }

for _, server in ipairs(langservers) do
	require("lspconfig")[server].setup({
		capabilities = capabilities,
	})
end
