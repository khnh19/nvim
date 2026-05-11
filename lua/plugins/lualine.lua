return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      component_separators = '',
      section_separators = '',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { { 'filename', path = 1 } },
      lualine_c = { 'diagnostics' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'location' },
    },
  },
}
