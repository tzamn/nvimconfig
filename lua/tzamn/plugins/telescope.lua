-- plugins/telescope.lua:
local nvim_telescope = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    -- or                              , branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-bibtex.nvim'
    },
    config = function()
        local telescope = require("telescope")
        telescope.load_extension('bibtex')
        local bib_actions = require('telescope-bibtex.actions')
        telescope.setup{
            bibtex = {
                -- Depth for the *.bib file
                depth = 1,
                -- Custom format for citation label
                custom_formats = {},
                -- Format to use for citation label.
                -- Try to match the filetype by default, or use 'plain'
                format = '',
                -- Path to global bibliographies (placed outside of the project)
                global_files = {'/home/tzamn/Zotero/MainLibrary.bib'},
                -- Define the search keys to use in the picker
                search_keys = { 'author', 'year', 'title' },
                -- Template for the formatted citation
                citation_format = '{{author}} ({{year}}), {{title}}.',
                -- Only use initials for the authors first name
                citation_trim_firstname = true,
                -- Max number of authors to write in the formatted citation
                -- following authors will be replaced by "et al."
                citation_max_auth = 2,
                -- Context awareness disabled by default
                context = false,
                -- Fallback to global/directory .bib files if context not found
                -- This setting has no effect if context = false
                context_fallback = true,
                -- Wrapping in the preview window is disabled by default
                wrap = false,
                -- user defined mappings
                mappings = {
                    -- i = {
                    --     ["<CR>"] = bib_actions.key_append('%s'), -- format is determined by filetype if the user has not set it explictly
                    --     ["<C-e>"] = bib_actions.entry_append,
                    --     ["<C-c>"] = bib_actions.citation_append('{{author}} ({{year}}), {{title}}.'),
                    -- }
                },
            }
}
        local blt = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', blt.find_files, {})
        vim.keymap.set('n', '<leader>fp', blt.git_files, {})
        vim.keymap.set('n', '<leader>fg', blt.live_grep, {})
        vim.keymap.set('n', '<leader>fw', blt.grep_string, {})
        vim.keymap.set('n', '<leader>fb', blt.buffers, {})
        vim.keymap.set('n', '<leader>fh', blt.help_tags, {})
        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope bibtex<CR>", { remap = true })
    end
}

return nvim_telescope
