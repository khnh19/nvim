return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.config',
  opts = {
    ensure_installed = {
      'vimdoc',
      'lua',
      'python',
      'c',
      'cpp',
      'rust',
    },

    highlight = { enable = true },
    indent = { enable = true },
  },
}
