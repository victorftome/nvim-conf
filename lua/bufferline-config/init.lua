local separator_color_selected = "#f38ba8"

require("bufferline").setup({
	options = {
		separator_style = { "<>", "<>" },
	},
})

vim.keymap.set("n", "e", ":bnext<CR>", {})
vim.keymap.set("n", "q", ":bprev<CR>", {})
vim.keymap.set("n", "w", ":bdelete<CR>", {})
