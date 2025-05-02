return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "php",
      "html",
      "blade",
      "javascript",
      "typescript",
      "css",
      textobjects = {
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@function.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@function.outer",
          },
        },
      },
    })
  end,
}
