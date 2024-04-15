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
    },
    {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
}
