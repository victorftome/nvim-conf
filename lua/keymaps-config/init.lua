local map = vim.keymap.set

map({ "n" }, "n", ":m +1<CR>", { noremap = true, silent = true })
map({ "n", "v" }, "m", ":m -2<CR>", { noremap = true, silent = true })
