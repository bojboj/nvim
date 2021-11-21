vim.g.nvim_tree_show_icons = {
	git = 0,
	files = 0,
	folder = 0,
	folder_arrows = 0
}

vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 1

require('nvim-tree').setup {
	filters = {
		custom = {'.git'}
	}
}

local keymap = vim.api.nvim_set_keymap

keymap('n', '<Leader>ntff', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})
keymap('n', '<Leader>ntr', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
keymap('n', '<Leader>ntt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
