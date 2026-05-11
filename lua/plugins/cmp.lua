return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
  },

  opts = function()
    local cmp = require 'cmp'
    return {
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },

      completion = {
        completeopt = 'menu,menuone,noselect',
      },

      mapping = cmp.mapping.preset.insert {
        ['<c-space>'] = cmp.mapping.complete(),
        ['<cr>'] = cmp.mapping.confirm { select = true },
      },

      sources = cmp.config.sources {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      },
    }
  end,
}
