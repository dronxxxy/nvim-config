local map = vim.api.nvim_set_keymap

map('n', '<C-t>',
  ':split<cr>' ..
  '<C-w>j' ..
  '<cmd>res12<cr>' ..
  '<cmd>ter<cr>' ..
  'a'
, { desc = 'Open a terminal at bottom' })

map('t', '<C-q>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
map('t', '<C-w>', '<C-q><C-w>', { desc = 'Exit terminal mode' })

map('v', '>', '>gv', { desc = 'Shift right without selection cancelation' })
map('v', '<', '<gv', { desc = 'Shift left without selection cancelation' })
