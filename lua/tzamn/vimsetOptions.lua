-- Author:
-- 	Tzamn Melendez
--
-- Description:
-- 	General configuration for neovim,
-- 	all the set options in vim are now called by set instead of set
--
-- call the lua api for vim option and commands
local set          = vim.opt
local cmd          = vim.cmd

-- Set number
set.number         = true

-- Set relative numbers
set.relativenumber = true

-- highlight the cursor line
set.cursorline     = true

-- Set mouse active
set.mouse          = "nvi"

-- Indent a new line the same amount as the line just typed
set.autoindent     = true

-- When on, lines longer than the width of the window will wrap and displaying continues on the next line.  When off lines will not wrap and only part of long lines will be displayed.set.wrap = false

set.breakindent    = true

-- Number of columns occupied by a tab
set.tabstop        = 4

-- See multiple spaces as tabstops so <BS> does the right thing
set.softtabstop    = 4

-- Converts tabs to white space
set.expandtab      = true

-- Width for autoindents
set.shiftwidth     = 4

-- set column to 100 by default
set.colorcolumn    = "100"

set.textwidth      = 100

set.termguicolors  = true

-- Dont let add more than 8 lines at the end of the file
set.scrolloff      = 8
