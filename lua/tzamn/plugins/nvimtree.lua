local icons       = {
    "nvim-tree/nvim-web-devicons",
}

local filetree    = {
    "nvim-tree/nvim-tree.lua",
    config = function()
        local tree = require("nvim-tree")
        tree.setup({
            view = {
                width = 40,
                relativenumber = true,
            }
        })
        vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)
    end
}

return { icons, filetree }
