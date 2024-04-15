-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local opt = vim.opt
-- vim.cmd([[set termguicolors]])
opt.termguicolors = true
opt.cursorline = false -- Enable highlighting of the current line
opt.expandtab = false -- Use spaces instead of tabs

if vim.loop.os_uname().sysname == "Darwin" then
  vim.notify("MacOS init")
end

if vim.loop.os_uname().sysname == "Linux" then
  vim.notify("Linux init")
end
--
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.notify("Windows Init")
  vim.cmd("let &shell = 'powershell'")
  vim.cmd(
    "let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'"
  )
  vim.cmd("let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("set shellquote= shellxquote=")
end
--
-- If you are in Linux you need to install xclip to the clipboard to work
vim.opt.clipboard = "unnamedplus"

-- neovide config

if vim.g.neovide then
  vim.o.guifont = "BigBlueTerm437 Nerd Font:h14" -- text below applies for VimScript
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_fullscreen = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_refresh_rate = 30
end
