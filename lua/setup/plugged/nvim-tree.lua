local nvim_tree = require("nvim-tree")
local view = require("nvim-tree.view")
local dapui = require("dapui")

vim.g.nvim_tree_root_folder_modifier = ":p:."
vim.g.nvim_tree_indent_markers = 1

nvim_tree.setup {
  filters = {
    custom = {".git"}
  },
  view = {
    width = 40,
    relativenumber = true
  },
  git = {
    ignore = false
  }
}

function Nvim_tree_open_find()
  dapui.close()

  local bufname = vim.fn.bufname()
  local fname = vim.fn.fnamemodify(bufname, ':p')
  local stat = vim.loop.fs_stat(fname)

  if not (stat and stat.type == "file" and vim.loop.fs_access(fname, "R")) then
    nvim_tree.open()
    return
  end

  nvim_tree.find_file(true)
end

function Nvim_tree_add_width(num)
  nvim_tree.resize(view.View.width + num)

  -- Temporary fix nvim_tree.resize does not automatically resize window.
  nvim_tree.close()
  nvim_tree.open()
end

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader>T", ":NvimTreeClose<cr>", opts)
keymap("n", "<leader>t", ":lua Nvim_tree_open_find()<cr>", opts)
keymap("n", "<leader>rt", ":lua Nvim_tree_add_width(10)<cr>", opts)
keymap("n", "<leader>re", ":lua Nvim_tree_add_width(-10)<cr>", opts)
keymap("n", "<leader>rr", ":NvimTreeRefresh<cr>", opts)
