require('telescope').setup{
    defaults = {
      layout_strategy = 'vertical'
    }
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n', '<leader>s', ':Telescope ', opts)
