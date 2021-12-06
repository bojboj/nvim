require('toggleterm').setup{
  shade_terminals = false
}

local Terminal  = require('toggleterm.terminal').Terminal

local scratch_terminal = Terminal:new({
  direction = 'float',
})

function _scratch_terminal_toggle()
  scratch_terminal:toggle()
end

local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>er', '<cmd>lua _scratch_terminal_toggle()<CR>', opts)
keymap('t', [[<C-\><C-\>]], [[<C-\><C-n>]], opts)
