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
  -- "<leader>wd", -- delete window, <C-W>c, now just quit
  -- "<leader>ww", -- other window, <C-W>p, not necessary
  -- "<leader>w-", -- duplicate split window <C-W>s
  -- "<leader>w|", -- duplicate split window <C-W>v
  "<leader><tab>[", -- next tab
  "<leader><tab>]", -- previous tab
}) do
  vim.keymap.del("n", key)
end

-- Tabs Handler
map("n", "<A-.>", "<cmd>tabnext<cr>")
map("n", "<A-,>", "<cmd>tabprevious<cr>")

--neotree config
map("n", "<leader>tr", "<cmd>Neotree<CR>")

vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({"n","x"}, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({"n","x"}, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")

vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)


vim.api.nvim_set_keymap("n", "<leader>ss", "<Plug>(SpotifySkip)", { silent = true }) -- Skip the current track
vim.api.nvim_set_keymap("n", "<leader>sp", "<Plug>(SpotifyPause)", { silent = true }) -- Pause/Resume the current track
vim.api.nvim_set_keymap("n", "<leader>so", ":Spotify<CR>", { silent = true }) -- Open Spotify Search window
vim.api.nvim_set_keymap("n", "<leader>sd", ":SpotifyDevices<CR>", { silent = true }) -- Open Spotify Devices window
vim.api.nvim_set_keymap("n", "<leader>sa", "<Plug>(SpotifyPrev)", { silent = true }) -- Go back to the previous track

