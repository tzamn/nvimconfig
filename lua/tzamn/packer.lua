--Author: Tzamn Melendez
--
--Description:
--  Packer.neovim plugin manager

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use) -- Packer can manage itself


    use ('neomake/neomake')

    use ('rmagatti/goto-preview')

    -- colorscheme 
    use ('rebelot/kanagawa.nvim')

    -- plugin for latex, the configuration of this file is include in the syntax folder into the
    -- file tex.lua

    use ('RRethy/vim-illuminate')

    -- use { 'folke/noice.nvim',
    --     requires = {
    --         { 'MunifTanjim/nui.nvim' },
    --         { 'nvim-lualine/lualine.nvim' }, --[[ Optional ]]
    --         { 'rcarriga/nvim-notify' } -- Optional
    --     },
    -- }

end)

