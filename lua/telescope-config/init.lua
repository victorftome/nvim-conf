local builtin = require("telescope.builtin")
local M = {}

M.find_files = function()
	builtin.find_files({
		find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" },
		previewer = false,
	})
end

vim.keymap.set("n", "f", M.find_files, {})
vim.keymap.set("n", "g", builtin.live_grep, {})
