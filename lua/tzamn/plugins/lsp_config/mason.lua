-- mason configuration 
--
local mason = require("mason")
local mason_lspconf = require("mason-lspconfig")
local mason_install= require("mason-tool-installer")

local lsp_conf = require("lspconfig")
local lsp_cmp = require("cmp_nvim_lsp")

mason.setup({})

mason_lspconf.setup({
    automatic_enable = false,
    ensure_installed = {
        "lua_ls",
        "clangd",
        "pylsp",
        "hdl_checker",
    },
})

mason_install.setup({
    -- formatters
    ensure_installed = {
        "stylua",
        "clang-format",
        "black"
    },
})

-- mason_lspconf.setup_handlers(handlers)

