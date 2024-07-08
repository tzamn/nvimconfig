---@module keyremap
---@author Tzamn Melendez Carmona
---@license 
-- All the vim remaps are in this file, however the plugins remaps are in their
-- respective .lua file in after/plugin folder
--
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<leader>y", "\"+y")
