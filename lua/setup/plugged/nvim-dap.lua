local dap = require('dap')

dap.adapters.php = {
	type = 'executable',
	command = 'node',
	args = {os.getenv('HOME')..'/.config/nvim/tooling/dab_adapters/vscode-php-debug/out/phpDebug.js'}
}

require('dap.ext.vscode').load_launchjs()

dap.defaults.fallback.terminal_win_cmd = '80vsplit new'

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n', '<F4>', ':lua require"dap".terminate()<CR>', opts)
keymap('n', '<F5>', ':lua require"dap".continue()<CR>', opts)
keymap('n', '<F6>', ':lua require"dap".pause()<CR>', opts)
keymap('n', '<F7>', ':lua require"dap".toggle_breakpoint()<CR>', opts)
keymap('n', '<F8>', ':lua require"dap".step_into()<CR>', opts)
keymap('n', '<F9>', ':lua require"dap".run_to_cursor()<CR>', opts)
keymap('n', '<leader>dk', ':lua require"dap".up()<CR>', opts)
keymap('n', '<leader>dj', ':lua require"dap".down()<CR>', opts)
keymap('n', '<leader>P', ':lua require"dap.ui.widgets".hover()<CR>', opts)
keymap('n', '<leader>L', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>', opts)
