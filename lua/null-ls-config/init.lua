local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.clang_format.with({
		extra_args = {
			"--style={BasedOnStyle: Microsoft, UseTab: Always, IndentWidth: 4, BreakBeforeBraces: Allman, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false, ColumnLimit: 0}",
		},
	}),
	formatting.rustfmt.with({
		extra_args = {
			"--config hard_tabs=true",
		},
	}),
	formatting.stylua,
	formatting.autopep8,
	formatting.beautysh.with({ extra_args = { "--tab" } }),
	formatting.eslint,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})
