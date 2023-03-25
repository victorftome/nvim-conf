require'toggleterm'.setup {
    size = 20,
    open_mapping = [[<c-a>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '1',
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal'
}

local toggle_float = function()
    local float = require('toggleterm.terminal').Terminal:new({
        direction = "float"
    })
    return float:toggle()
end

vim.keymap.set('n', '<C-f>', toggle_float, {})
