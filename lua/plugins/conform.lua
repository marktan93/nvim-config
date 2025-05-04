return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 1000,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      vue = { "prettier" },
      php = { "php_cs_fixer" },
      blade = { "blade-formatter" },
    },
    formatters = {
      ["blade-formatter"] = {
        command = "blade-formatter",
        args = { "--stdin" },
        stdin = true,
      },
      ["php_cs_fixer"] = {
        command = "php-cs-fixer",
        args = { "fix", "--quiet", "--using-cache=no", "-" },
        stdin = true,
      },
    },
  },
}
