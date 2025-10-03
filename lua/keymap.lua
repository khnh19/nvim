vim.g.mapleader = ' '
local keymap = vim.keymap.set

keymap('n', '<c-a>', 'ggVG')

keymap({ 'n', 'x' }, '<leader>p', '"0p')

keymap('n', '<leader>q', '<cmd>q<cr>')
keymap('n', '<leader>w', '<cmd>w<cr>')
keymap('n', '<leader>x', '<cmd>x<cr>')

keymap('n', '<A-Down>', ':m .+1<CR>==')
keymap('n', '<A-Up>', ':m .-2<CR>==')
keymap('v', '<A-Down>', ":m '>+1<CR>gv=gv")
keymap('v', '<A-Up>', ":m '<-2<CR>gv=gv")

keymap('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })
