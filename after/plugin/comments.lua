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
