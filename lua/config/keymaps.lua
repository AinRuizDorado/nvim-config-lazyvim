-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

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

-- Sadly I have to delete the default keymapings to this thing to work, lazyvim is planned to have default mappings that not apply to my workflow
for _, key in pairs({
  "<leader>wd", -- delete window, <C-W>c, now just quit
  "<leader>ww", -- other window, <C-W>p, not necessary
  "<leader>w-", -- duplicate split window <C-W>s
  "<leader>w|", -- duplicate split window <C-W>v
  "<leader>qq", -- quit all
  "<leader><tab>[",
  "<leader><tab>]",
}) do
  vim.keymap.del("n", key)
end

-- faster quit and save
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Faster quit" })
map("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Faster Write" })

-- Tabs Handler
map("n", "<A-.>", "<cmd>tabnext<cr>")
map("n", "<A-,>", "<cmd>tabprevious<cr>")

-- terminal handler
local lazyterm = function()
  Util.float_term(nil, { cwd = Util.get_root() })
end
map("n", "<C-r>", lazyterm, { desc = "Terminal (root dir)" })
map("t", "<C-r>", "<cmd>close<cr>", { desc = "Hide Terminal" })

--neotree config
