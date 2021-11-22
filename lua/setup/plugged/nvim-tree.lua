vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 1

require('nvim-tree.view').View.winopts.relativenumber = true
require('nvim-tree').setup {
	filters = {
		custom = {'.git'},
	},
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('n', '<Leader>ntff', ':NvimTreeFindFile<CR>', opts)
keymap('n', '<Leader>ntr', ':NvimTreeRefresh<CR>', opts)
keymap('n', '<Leader>ntt', ':NvimTreeToggle<CR>', opts)
