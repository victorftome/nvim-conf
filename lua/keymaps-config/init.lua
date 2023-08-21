local map = vim.keymap.set

map({ "n" }, "n", ":m +1<CR>", { noremap = true, silent = true })
map({ "n", "v" }, "m", ":m -2<CR>", { noremap = true, silent = true })

map("n", "e", ":bnext<CR>", { noremap = true, silent = true })
map("n", "q", ":bprev<CR>", { noremap = true, silent = true })
map("n", "w", ":bdelete<CR>", { noremap = true, silent = true })

map({ "n", "v" }, "t", ":CommentToggle<CR>", { noremap = true, silent = true })

map("n", "<C-s>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })