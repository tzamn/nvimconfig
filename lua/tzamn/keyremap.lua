-- Author:
--      Tzamn Melendez
--
-- Description:
--      Shortcut configuration

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
