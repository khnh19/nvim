return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      end,
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    vim.lsp.config('lua_ls', {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    })

    vim.lsp.enable {
      'lua_ls',
      'clangd',
      'pyright',
    }
  end,
}
