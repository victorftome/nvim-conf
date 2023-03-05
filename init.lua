require('config-files.vim-settings')
require('config-files.vim-plugins')

-- Treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "help", "query", "sql", "rust", "bash"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true
    },
}

-- Keymaps, 
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'f', builtin.find_files, {})
vim.keymap.set('n', 'g', builtin.live_grep, {})

-- nvim-tree
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true
    },
})

-- vgit
require('vgit').setup()

-- lualine
require('lualine').setup {
    options = {
        theme = 'horizon',
    },
}

-- CMP
vim.g.completeopt="menu,menuone,noselect,noinser"
local cmp = require 'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
            select = true
        }) -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({{
        name = 'nvim_lsp'
    }, {
        name = 'vsnip'
    } -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    }, {{
        name = 'buffer'
    }})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({{
        name = 'cmp_git'
    } -- You can specify the `cmp_git` source if you were installed it.
    }, {{
        name = 'buffer'
    }})
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({'/', '?'}, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{
        name = 'buffer'
    }}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({{
        name = 'path'
    }}, {{
        name = 'cmdline'
    }})
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local langservers = {
    'rust_analyzer',
    'clangd'
}

for _, server in ipairs(langservers) do
    require'lspconfig'[server].setup {
        capabilities = capabilities
    }
end

-- Theme
require('catppuccin').load()
