return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "latte", -- options: latte, frappe, macchiato, mocha
      transparent_background = true,
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
      },
      custom_highlights = function(colors)
        return {
          CursorLine = { bg = "NONE" }, -- make it transparent
          CursorLineNr = { fg = colors.blue, bg = "NONE", bold = true }, -- optional style
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
