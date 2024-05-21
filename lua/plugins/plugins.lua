return {

  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Automatically format on save
      autoformat = false,
    }
  },
}
