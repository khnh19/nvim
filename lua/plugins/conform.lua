return {
  'stevearc/conform.nvim',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'ruff_format' },
      c = { 'clang-format' },
      cpp = { 'clang-format' },
    },

    format_on_save = {
      timeout_ms = 500,
      async = false,
      lsp_fallback = true,
    },
  },
}
