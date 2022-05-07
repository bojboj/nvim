vim.g.symbols_outline = {
  highlight_hovered_item = false,
  auto_preview = false
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader>s", ":SymbolsOutline<cr>", opts)
