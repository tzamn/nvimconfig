
-- mason-lsp depends from mason
local mason = {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },

    config = function()
        require "tzamn.plugins.lsp_config.mason"
    end
}

-- nvim-lspconfig should be set after mason and mason-lsp acording to mason-lspconfi.nvim
-- documentation
local lsp = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        --display nice documentations
        "folke/neodev.nvim"
    },
    config = function()
        -- IMPORTANT: make sure to setup neodev BEFORE lspconfig
        require("neodev").setup({})
        require "tzamn.plugins.lsp_config.lsp-remaps"
    end
}

-- the formatter depeds on the lsp
local format = {
    "stevearc/conform.nvim",
    config = function()
        require "tzamn.plugins.lsp_config.formatter"
    end
}

-- mason depends form lspconfig and form cmp-nvim-lsp
local cmp = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        --git auto completion
        "petertriho/cmp-git",
        --snipets
        "L3MON4D3/LuaSnip",
        -- dependencies of snipets
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "j-hui/fidget.nvim",
    },
    config = function()
        require('fidget').setup({})
        require "tzamn.plugins.lsp_config.cmp"
    end

}

return { mason, lsp, format, cmp }
