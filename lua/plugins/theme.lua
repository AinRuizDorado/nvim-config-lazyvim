return {

  -- add gruvbox
  { "thedenisnikulin/vim-cyberpunk" },

  { "rebelot/kanagawa.nvim" },
	{"RRethy/nvim-base16"},
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "base16-windows-95",
      colorscheme = "kanagawa",
      -- colorscheme = "dosbox",
    },
  },
}
