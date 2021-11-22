local home = os.getenv('HOME')
local dap = require('dap')

dap.adapters.php = {
	type = 'executable',
	command = 'node',
	args = {home..'/.config/nvim/tooling/vscode-php-debug/out/phpDebug.js'}
}

require('dap.ext.vscode').load_launchjs()

dap.defaults.fallback.terminal_win_cmd = '80vsplit new'

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('n', '<leader>dh', ':lua require"dap".toggle_breakpoint()<CR>', opts)
keymap('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
keymap('n', '<c-k>', ':lua require"dap".step_out()<CR>', opts)
keymap('n', '<c-l>', ':lua require"dap".step_into()<CR>', opts)
keymap('n', '<c-j>', ':lua require"dap".step_over()<CR>', opts)
keymap('n', '<c-h>', ':lua require"dap".continue()<CR>', opts)
keymap('n', '<leader>dk', ':lua require"dap".up()<CR>', opts)
keymap('n', '<leader>dj', ':lua require"dap".down()<CR>', opts)
keymap('n', '<leader>dc', ':lua require"dap".terminate()<CR>', opts)
keymap('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l', opts)
keymap('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>', opts)
keymap('n', '<leader>da', ':lua require"debugHelper".attach()<CR>', opts)
keymap('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>', opts)
keymap('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>', opts)
keymap('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>', opts)
