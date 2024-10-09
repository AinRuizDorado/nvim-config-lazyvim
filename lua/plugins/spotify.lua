return {
  {
    "KadoBOT/nvim-spotify",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local spotify = require("nvim-spotify")

      spotify.setup({
        status = {
          update_interval = 10000, -- el intervalo (ms) para verificar lo que se está reproduciendo
          format = "%s %t by %a", -- argumento --format para spotify-tui
        },
      })
    end,
    build = "make", -- para el comando de construcción
  },
}
