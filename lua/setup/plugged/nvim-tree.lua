local nvim_tree = require("nvim-tree")
local view = require("nvim-tree.view")
local dapui = require("dapui")

vim.g.nvim_tree_root_folder_modifier = ":p:."

nvim_tree.setup {
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

function nvim_tree_open_find()
  dapui.close()

  if not view.win_open() then
    nvim_tree.open()
    return
  end

  nvim_tree.find_file(true)
end

function nvim_tree_add_width(num)
  nvim_tree.resize(view.View.width + num)
end

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader>T", ":NvimTreeClose<cr>", opts)
keymap("n", "<leader>t", ":lua nvim_tree_open_find()<cr>", opts)
keymap("n", "<leader>rt", ":lua nvim_tree_add_width(10)<cr>", opts)
keymap("n", "<leader>re", ":lua nvim_tree_add_width(-10)<cr>", opts)
keymap("n", "<leader>rr", ":NvimTreeRefresh<cr>", opts)
