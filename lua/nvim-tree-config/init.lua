require("nvim-tree").setup({
	sort_by = "case_sensitive",
	renderer = {
		group_empty = true,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 400,
	},
})
