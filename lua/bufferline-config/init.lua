local separator_color_selected = "#f38ba8"

require("bufferline").setup({
	options = {
		indicator = {
			style = "underline",
		},
	},
	highlights = {
		indicator_selected = {
			fg = separator_color_selected,
		},
	},
})

vim.keymap.set("n", "e", ":bnext<CR>", {})
vim.keymap.set("n", "q", ":bprev<CR>", {})
vim.keymap.set("n", "w", ":bdelete<CR>", {})
