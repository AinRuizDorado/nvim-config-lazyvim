-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local opt = vim.opt
vim.cmd([[set termguicolors]])
opt.termguicolors = true
vim.api.nvim_set_option("termguicolors", true)
opt.cursorline = false -- Enable highlighting of the current line
opt.expandtab = false -- Use spaces instead of tabs
