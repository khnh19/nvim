return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { { 'filename', path = 3 } },
        lualine_x = {},
        lualine_y = { 'diagnostics' },
        lualine_z = { 'location' },
      },
    }
  end,
}
