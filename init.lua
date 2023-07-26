-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local opt = vim.opt
vim.cmd([[set termguicolors]])
opt.termguicolors = true
vim.api.nvim_set_option("termguicolors", true)
opt.cursorline = false -- Enable highlighting of the current line
opt.expandtab = false -- Use spaces instead of tabs

if vim.loop.os_uname().sysname == "Darwin" then
  vim.notify("MacOS init")
end

if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.notify("Windows Init")
  vim.cmd([[set shell=powershell]])
end

vim.cmd([[set shellcmdflag=-command]])
vim.cmd([[set shellquote=\"]])
vim.cmd([[set shellquote=]])
