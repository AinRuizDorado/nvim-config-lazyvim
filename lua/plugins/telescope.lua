return {

  require("telescope").setup({
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--hidden",
        "--smart-case",
      },
      file_ignore_patterns = {
        -- ignore dotnet generated folders in the file search
        "^bin/",
        "^obj/",
        "/bin/",
        "/obj/",
        "/platforms/",
        "^platforms/",
        "/lib/",
        "^lib/",
        "/node_modules/",
        "^node_modules/",
        "/www/",
        "^www/",
      },
    },
  }),
}
