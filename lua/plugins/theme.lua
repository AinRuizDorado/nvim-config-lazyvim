return {

  -- add gruvbox
  { "thedenisnikulin/vim-cyberpunk" },
  { "EdenEast/nightfox.nvim" }, -- lazy

  { "rebelot/kanagawa.nvim" },
  { "RRethy/nvim-base16" },
	{ "yorumicolors/yorumi.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "base16-windows-95",
      -- colorscheme = "kanagawa",
      -- colorscheme = "dosbox",
      -- colorscheme = "carbonfox",
			colorscheme = "yorumi",
    },
  },
}
