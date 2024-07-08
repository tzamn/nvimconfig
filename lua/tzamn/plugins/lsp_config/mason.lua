-- mason configuration 
--
local mason = require("mason")
local mason_lspconf = require("mason-lspconfig")
local mason_install= require("mason-tool-installer")

local lsp_conf = require("lspconfig")
local lsp_cmp = require("cmp_nvim_lsp")

local handlers = {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        lsp_conf[server_name].setup {
            capabilities = lsp_cmp.default_capabilities()
        }
    end,
    -- Next, you can provide targeted overrides for specific servers.
    -- ["rust_analyzer"] = function ()
        --     require("rust-tools").setup {}
        -- end,
        ["lua_ls"] = function ()
            lsp_conf.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            }
        end,
    }
mason.setup({})

mason_lspconf.setup({
    -- lsps
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

mason_lspconf.setup_handlers(handlers)

