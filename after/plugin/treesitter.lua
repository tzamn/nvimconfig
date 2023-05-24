local tree_sitter = require'nvim-treesitter.configs'

tree_sitter.setup {

    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}
