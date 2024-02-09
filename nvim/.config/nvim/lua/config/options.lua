-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.shiftwidth = 4 -- Size of an indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.shell = "fish"
opt.colorcolumn = { 120 }
opt.confirm = false -- Confirm to save changes before exiting modified buffer
opt.spell = true
opt.spelllang = { "en_us" }
vim.g.loaded_netrwPlugin = 0
