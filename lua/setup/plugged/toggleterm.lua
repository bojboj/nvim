require('toggleterm').setup{
  shade_terminals = false
}

local Terminal  = require('toggleterm.terminal').Terminal

local lazygit_terminal = Terminal:new({
  cmd = 'lazygit',
  direction = 'float',
})

function _scratch_terminal_toggle()
  lazygit_terminal:toggle()
end

local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>lz', '<cmd>lua _scratch_terminal_toggle()<CR>', opts)
keymap('t', [[<C-\><C-\>]], [[<C-\><C-n>]], opts)
