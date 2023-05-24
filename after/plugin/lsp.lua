local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

-- Make sure you setup `cmp` after lsp-zero

local cmp           = require('cmp')
local cmp_action    = require('lsp-zero').cmp_action()

cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        ['<CR>']    = cmp.mapping.confirm({select = false}),
--        ['<C-k>']   = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
--        ['<C-j>']   = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
        ['<C-j>']   = cmp_action.luasnip_supertab(),
        ['<C-k>'] = cmp_action.luasnip_shift_supertab(),
    }
})
