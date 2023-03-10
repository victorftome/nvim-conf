return require ('packer').startup({
    function(use)

        use('wbthomason/packer.nvim')

        use('nvim-lua/plenary.nvim')

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        use 'navarasu/onedark.nvim'

        use { "catppuccin/nvim", as = "catppuccin" }

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.x',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            }
        }

        use {
            'tanvirtin/vgit.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            }
        }

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        use 'neovim/nvim-lspconfig'

        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-nvim-lua', 'hrsh7th/vim-vsnip',
                'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
                'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
            }
        }

        use {
            'romgrk/barbar.nvim',
            requires = 'nvim-web-devicons'
        }
    end
})
