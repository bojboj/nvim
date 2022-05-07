local actions = require("telescope.actions")

require("telescope").setup {
  defaults = {
    layout_strategy = "vertical"
  },
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      mappings = {
        i = {
          ["<c-d>"] = actions.delete_buffer
        },
      }
    },
    file_browser = {
      cwd = "%:p:h"
    }
  }
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader>F", ":Telescope<cr>", opts)
keymap("n", "<leader>fc", ":Telescope git_status<cr>", opts)
keymap("n", "<leader>fd", ":Telescope buffers<cr>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
