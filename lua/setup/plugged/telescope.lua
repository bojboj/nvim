require('telescope').setup{
    defaults = {
      layout_strategy = 'vertical'
    }
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n', '<leader>S', ':Telescope ', opts)
keymap('n', '<leader>sb', ':Telescope buffers<cr>', opts)
keymap('n', '<leader>sf', ':Telescope git_files<cr>', opts)
keymap('n', '<leader>sg', ':Telescope live_grep<cr>', opts)
keymap('n', '<leader>sr', ':Telescope lsp_references<cr>', opts)
keymap('n', '<leader>ss', ':Telescope git_status<cr>', opts)
