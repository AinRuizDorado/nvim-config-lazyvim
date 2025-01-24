return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    -- Asegúrate de que la tabla fzf_opts existe
    opts.fzf_opts = opts.fzf_opts or {}
    -- Cambia la opción --no-scrollbar a false
    opts.fzf_opts["--no-scrollbar"] = false
    return opts
  end,
}
