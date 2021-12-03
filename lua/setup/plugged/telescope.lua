local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical'
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ['<c-d>'] = actions.delete_buffer
        },
      }
    },
  },
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n', '<leader>F', ':Telescope ', opts)
keymap('n', '<leader>fd', ':Telescope buffers<cr>', opts)
keymap('n', '<leader>ff', ':Telescope git_files<cr>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<cr>', opts)
keymap('n', '<leader>fr', ':Telescope lsp_references<cr>', opts)
keymap('n', '<leader>fs', ':Telescope git_status<cr>', opts)
