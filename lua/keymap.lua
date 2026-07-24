vim.g.mapleader = ' '
local keymap = vim.keymap.set

keymap('n', '<c-a>', 'ggVG')

keymap({ 'n', 'x' }, '<leader>p', '"0p')

keymap('v', 'J', ":m '>+1<cr>gv=gv")
keymap('v', 'K', ":m '<-2<cr>gv=gv")

keymap('n', '<leader>q', '<cmd>q<cr>')
keymap('n', '<leader>w', '<cmd>w<cr>')
keymap('n', '<leader>x', '<cmd>x<cr>')

keymap('n', 'j', [[v:count?'j':'gj']], { expr = true })
keymap('n', 'k', [[v:count?'k':'gk']], { expr = true })

keymap('n', '<leader>nh', '<cmd>nohlsearch<cr>', { desc = 'Clear search' })
