require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "help", "query", "sql", "rust", "bash", "vim", "toml", "ron"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true
    }
}
