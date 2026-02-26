return {
  'williamboman/mason.nvim',
  dependencies = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-tool-installer').setup {
      ensure_installed = {
        'lua-language-server',
        'clangd',
        'pyright',
        'stylua',
        'clang-format',
        'ruff',
      },
    }
  end,
}
