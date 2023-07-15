-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorten function name
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

for _, key in pairs({
  "<leader>wd", -- delete window, <C-W>c, now just quit
  "<leader>ww", -- other window, <C-W>p, not necessary
  "<leader>w-", -- duplicate split window <C-W>s
  "<leader>w|", -- duplicate split window <C-W>v
  "<leader>qq", -- quit all
}) do
  vim.keymap.del("n", key)
end

map("n", "<leader>q", "<cmd>q<cr>", { desc = "Faster quit" })

map("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Faster Write" })

map("n", "<leader><tab>}", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>{", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
