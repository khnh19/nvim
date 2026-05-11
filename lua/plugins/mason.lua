return {
  'williamboman/mason.nvim',
  dependencies = 'WhoIsSethDaniel/mason-tool-installer.nvim',
  config = function()
    require('mason').setup()
    require('mason-tool-installer').setup {
      ensure_installed = {
        -- lsp servers
        'lua-language-server',
        'pyright',
        'clangd',
        'rust-analyzer',
        -- formatters
        'stylua',
        'ruff',
        'clang-format',
      },
    }
  end,
}
