local nvim_tree = require("nvim-tree")

vim.g.nvim_tree_root_folder_modifier = ":p:."

nvim_tree.setup({
  filters = {
    custom = {".git", "__pycache__"}
  },
  view = {
    relativenumber = true
  },
  renderer = {
    indent_markers = {
      enable = true
    }
  },
  git = {
    ignore = false
  }
})

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader>t", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>T", ":NvimTreeFindFile<cr>", opts)
