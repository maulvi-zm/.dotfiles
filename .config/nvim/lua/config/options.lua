-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Setting for tab spaces
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations

-- Setting for php intelephense
vim.g.lazyvim_php_lsp = "intelephense"
