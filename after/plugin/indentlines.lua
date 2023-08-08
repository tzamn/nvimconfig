local indentlines = require("indent_blankline")

vim.opt.list = true

indentlines.setup{
    char = "",
    show_trailing_blankline_indent = false,
    space_char_blankline = "",
    show_current_context = true,
    show_current_context_start = true,
}
