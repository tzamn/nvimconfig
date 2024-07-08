local comments = {
    "numToStr/Comment.nvim",
    config = function()
        local cmt = require("Comment")

        cmt.setup
        {
            padding = true,
            sticky = true,
            ignore = nil,
            toggler = { line = '<leader>cc', block = '<leader>cbb' },
            opleader = { line = '<leader>c', block = '<leader>cb' },
            extra = { above = '<leader>cu', below = '<leader>cd', eol = '<leader>cA' },
            mappings = { basic = true, extra = true },
            pre_hook = nil,
            post_hook = nil,
        }
    end
}

local todo = {
    "folke/todo-comments.nvim",
    config = function()
        local td = require("todo-comments")
        td.setup{}
        -- remaps
        vim.keymap.set("n", "<leader>td", vim.cmd.TodoTelescope)
    end
}

local doxigen = {
    "danymat/neogen",
    config = function()
        local ngen = require('neogen')
        ngen.setup{}
        -- remaps
        vim.keymap.set("n", "<leader>cf", vim.cmd.Neogen)
    end
}

return { comments, todo, doxigen }
