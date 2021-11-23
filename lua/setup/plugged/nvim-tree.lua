vim.g.nvim_tree_root_folder_modifier = ':p:.'

require('nvim-tree.view').View.winopts.relativenumber = true
require('nvim-tree').setup {
  filters = {
    custom = {'.git'},
  },
  view = {
    width = 40,
  },
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('n', '<Leader>ntff', ':NvimTreeFindFile<CR>', opts)
keymap('n', '<Leader>ntr', ':NvimTreeRefresh<CR>', opts)
keymap('n', '<Leader>ntt', ':NvimTreeToggle<CR>', opts)
