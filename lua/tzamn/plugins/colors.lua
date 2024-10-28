local bluloco = {
    "uloco/bluloco.nvim",
    lazy = false,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
        local loco = require("bluloco")

        loco.setup({
            style       = "auto", -- "auto" | "dark" | "light"
            transparent = true,
            italics     = true,
            terminal    = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
            guicursor   = true,
        })
    end
}

local oxocarbon = {
    "nyoom-engineering/oxocarbon.nvim",
    config = function()
        require("oxocarbon")
    end
}

local kanagawa = {
    "rebelot/kanagawa.nvim",

    config = function()
        require("kanagawa")
    end
}

local tokyonight = {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
}
return { bluloco, oxocarbon, kanagawa, tokyonight }
