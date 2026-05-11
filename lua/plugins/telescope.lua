return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      config = function()
        require('telescope').load_extension 'fzf'
      end,
    },
  },
  keys = {
    { '<leader>f', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { '<leader>g', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
  },

  opts = function()
    local actions = require 'telescope.actions'
    return {
      defaults = {
        mappings = { i = { ['<esc>'] = actions.close } },
        file_ignore_patterns = { '.git/' },
        path_display = { 'smart' },
      },
      pickers = {
        find_files = { hidden = true },
      },
    }
  end,
}
