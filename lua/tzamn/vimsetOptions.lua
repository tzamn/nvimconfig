-- Author: 
-- 	Tzamn Melendez
--
-- Description:
-- 	General configuration for neovim, 
-- 	all the set options in vim are now called by vim.opt insted of set 
--

-- Set number
vim.opt.number		= true

-- Set relative numbers
vim.opt.relativenumber	= true

-- Set mouse active
vim.opt.mouse		= active 

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

-- Set vim colorscheme
vim.cmd('colorscheme default') 
--
-- syntax on                   " syntax highlighting
-- set clipboard=unnamedplus   " using system clipboard
-- 
-- au BufRead,BufNewFile *.cmm set filetype=practice
-- 
-- 
-- 
-- " set spell                 " enable spell check (may need to download language package)
-- " set noswapfile            " disable creating swap file
-- " set backupdir=~/.cache/vim " Directory to store backup files.
-- 
-- 
-- 
-- call plug#begin() 
--     Plug 'https://github.com/preservim/nerdtree'
--     Plug 'neomake/neomake'
-- 
-- call plug#end()
-- 
-- nnoremap <C-t> :NERDTreeFocus<CR>
-- nnoremap <C-t> :NERDTreeToggle<CR>
-- 
