local nvim_tree = require("nvim-tree")

vim.g.nvim_tree_root_folder_modifier = ":p:."

nvim_tree.setup({
  filters = {
    custom = {".git$", "__pycache__"}
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

keymap("n", "<leader>R", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>r", ":NvimTreeFindFile<cr>", opts)
