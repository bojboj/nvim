vim.g.nvim_tree_root_folder_modifier = ":p:."
vim.g.nvim_tree_quit_on_open = 1

require("nvim-tree").setup {
  filters = {
    custom = {".git"}
  },
  view = {
    relativenumber = true
  },
  git = {
    ignore = false
  }
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader>tr", ":NvimTreeRefresh<cr>", opts)
keymap("n", "<leader>tt", ":lua require('dapui').close() require('nvim-tree').toggle(true)<cr>", opts)
