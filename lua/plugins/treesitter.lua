return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'vim',
      'lua',
      'python',
      'c',
      'cpp',
      'typst',
    },

    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
