local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.clang_format.with({ extra_args = { "--style={BasedOnStyle: Microsoft, UseTab: Always, IndentWidth: 4, BreakBeforeBraces: Allman, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false, ColumnLimit: 0}" } }),
	formatting.rustfmt,
	formatting.stylua,
}

null_ls.setup({ sources = sources })
