local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

require('telescope').setup{
    defaults = {
      layout_strategy = 'vertical'
    }
}

keymap('n', '<Leader>t', ':Telescope ', opts)
