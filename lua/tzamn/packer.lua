--Author: Tzamn Melendez
--
--Description:
--  Packer.neovim plugin manager

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use) -- Packer can manage itself

    -- plugin manager 
    use {'wbthomason/packer.nvim'}

    use {'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    use ('nvim-treesitter/nvim-treesitter',
        {run = ':TSUpdate'}
    )

    use ('nvim-treesitter/playground')
    use ('nvim-treesitter/nvim-treesitter-context')

    -- it does require nvim-treesitter snippets for doxygen
    use ("danymat/neogen")

    use ("lukas-reineke/indent-blankline.nvim")

    use ('mbbill/undotree')
    use ('neomake/neomake')

    -- colorscheme 
    use ('rebelot/kanagawa.nvim')

    use {'numToStr/Comment.nvim'}

    use {'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required

            {'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },

            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            -- Required
            {'L3MON4D3/LuaSnip',
                dependencies = {'rafamadriz/friendly-snippets'}
            },
        }
    }


end)

