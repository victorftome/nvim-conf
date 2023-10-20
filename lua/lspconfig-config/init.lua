local capabilities = require("cmp_nvim_lsp").default_capabilities()
local langservers = { "clangd", "pyright", "bashls", "tsserver", "als" }

for _, server in ipairs(langservers) do
	require("lspconfig")[server].setup({
		capabilities = capabilities,
	})
end
