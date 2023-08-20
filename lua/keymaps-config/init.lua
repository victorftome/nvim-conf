local map = vim.api.nvim_set_keymap

map("n", "n", ":m +1<CR>", { noremap = true, silent = true })
map("n", "m", ":m -2<CR>", { noremap = true, silent = true })
