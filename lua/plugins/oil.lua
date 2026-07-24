return {
  'stevearc/oil.nvim',
  keys = {
    {
      '<c-\\>',
      '<cmd>lua require("oil").toggle_float()<cr>',
      desc = 'Oil Float',
    },
  },
  opts = {
    view_options = {
      show_hidden = true,
    },
    float = {
      border = 'rounded',
    },
  },
}
