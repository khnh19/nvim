return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require 'telescope.builtin'
    local actions = require 'telescope.actions'
    local keymap = vim.keymap
    keymap.set('n', '<leader>f', builtin.find_files)
    keymap.set('n', '<leader>g', builtin.live_grep)
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['esc'] = actions.close,
          },
        },
        path_display = { 'smart' },
      },
    }
  end,
}
