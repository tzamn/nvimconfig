local latex = {
    "lervag/vimtex",
    lazy = false,
    init = function()
        -- Define local variable for vim.g
        local tex = vim.g

        vim.syntax = 'enable'
        tex.vimtex_view_method = 'zathura'
        -- tex.vimtex_compiler_engine = ''
        -- Latexmk settings
        tex.vimtex_compiler_latexmk = {
            options = {
                '-pdf',
                '-synctex=1',
                '-interaction=nonstopmode',
                '-file-line-error',
                '-shell-escape',
                '-recorder',
                '-use-make',
                '-f',
                '-quiet',
            },
        }
        -- -- Enable syntax highlighting for Vimtex
        -- tex.vimtex_compiler_syntax_enabled = 1
    end
}

return latex
