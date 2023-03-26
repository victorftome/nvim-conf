require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true
    }
})

-- keymap
vim.keymap.set('n', '<C-s>', ':NvimTreeToggle<CR>', {})
