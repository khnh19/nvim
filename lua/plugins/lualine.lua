return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = {
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch' },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = {},
      lualine_y = { 'diagnostics' },
      lualine_z = { 'location' },
    },
  },
}
