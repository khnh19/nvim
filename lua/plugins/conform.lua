return {
  'stevearc/conform.nvim',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' }, -- to disable, comment this out
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        css = { 'prettierd' },
        html = { 'prettierd' },
        json = { 'prettierd' },
        yaml = { 'prettierd' },
        c = { 'clang-format' },
        cpp = { 'clang-format' },
        markdown = { 'prettierd' },
      },
      format_on_save = {
        pattern = '.lua,*.css,*.html,*.json,*.yaml,*.md,*.c,*.cpp, *.rs',
        timeout_ms = 500,
        async = false,
        lsp_fallback = true,
      },
    }
  end,
}
