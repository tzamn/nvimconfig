local tree_sitter = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local ts_conf = require("nvim-treesitter.configs")
        ts_conf.setup({
            ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc"},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = {"latex"},
                additional_vim_regex_highlighting = false,
            },
            ignore_install = {"latex"}
        })
    end
}

local contex = { "nvim-treesitter/nvim-treesitter-context" }

local indent_blank_line = {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        local ibl = require("ibl")
        -- vim.opt.list = true
        ibl.setup {}
    end
}

return { tree_sitter, contex, indent_blank_line }
