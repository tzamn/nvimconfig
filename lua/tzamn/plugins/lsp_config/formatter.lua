require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" },
        python = { "black" },
    },
})
