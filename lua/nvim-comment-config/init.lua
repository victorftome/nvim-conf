require("nvim_comment").setup()

-- Keymaps
vim.keymap.set("n", "t", ":CommentToggle<CR>", {})
vim.keymap.set("v", "t", ":CommentToggle<CR>", {})
