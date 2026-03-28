return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      'zbirenbaum/copilot.lua',
      'nvim-lua/plenary.nvim',
    },

    build = 'make tiktoken',
    opts = {
      auto_insert_mode = true,
    },

    keys = {
      { '<leader>cc', '<cmd>CopilotChatToggle<cr>' },
      {
        '<leader>ce',
        '<cmd>CopilotChatExplain<cr>',
        mode = 'x',
      },
      {
        '<leader>cf',
        '<cmd>CopilotChatFix<cr>',
        mode = 'x',
      },
    },
  },
}
