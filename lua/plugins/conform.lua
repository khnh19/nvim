return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff_format' },
        c = { 'clang-format' },
        cpp = { 'clang-format' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = false,
      },
    }
  end,
}
