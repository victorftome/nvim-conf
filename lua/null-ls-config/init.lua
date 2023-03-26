local null_ls = require("null_ls")

local formatting = null_ls.builtins.formatting

local sources = {
    formatting.clang_format,
    formatting.rustfmt,
    formatting.stylua,
}

nul_ls.setup({ sources = sources })
