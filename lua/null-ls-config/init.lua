local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.clang_format.with({ extra_args = { "-style=", "{BasedOnStyle: Microsoft, IndentWidth: 4}" } }),
	formatting.rustfmt,
	formatting.stylua,
}

null_ls.setup({ sources = sources })
