-- Author: 
-- 	Tzamn Melendez
--
-- Description:
-- 	General configuration for neovim, 
-- 	all the set options in vim are now called by vim.opt instead of set 
--

-- Set number
vim.opt.number		= true

-- Set relative numbers
vim.opt.relativenumber	= true

-- Set mouse active
vim.opt.mouse		= "nvi"

-- Indent a new line the same amount as the line just typed
vim.opt.autoindent	= true

-- Number of columns occupied by a tab
vim.opt.tabstop		= 4

-- See multiple spaces as tabstops so <BS> does the right thing
vim.opt.softtabstop	= 4

-- Converts tabs to white space
vim.opt.expandtab	= true

-- Width for autoindents
vim.opt.shiftwidth	= 4

-- Set vim colorscheme kanagawa-wave, kanagawa-dragon, kanagawa-lotus
vim.cmd('colorscheme kanagawa-wave')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.opt.termguicolors   = true

vim.opt.spell   = false

vim.opt.colorcolumn = "80"

vim.opt.textwidth = 80

vim.opt.spelllang   = "en_us,es_mx"

