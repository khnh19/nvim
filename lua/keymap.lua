vim.g.mapleader = ' '
local keymap = vim.keymap.set

keymap('n', '<c-a>', 'ggVG')

keymap({ 'n', 'x' }, '<leader>p', '"0p')

keymap('n', '<leader>q', '<cmd>q<cr>')
keymap('n', '<leader>w', '<cmd>w<cr>')
keymap('n', '<leader>x', '<cmd>x<cr>')

keymap('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

keymap('n', '<leader>rj', function()
  local f = vim.fn.expand '%:t'
  local c = vim.fn.expand '%:t:r'
  vim.cmd('split | terminal javac ' .. f .. ' && java ' .. c)
end)
