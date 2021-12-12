local dap = require("dap")

dap.adapters.php = {
  type = "executable",
  command = "node",
  args = {os.getenv("HOME") .. "/.config/nvim/tooling/dab_adapters/vscode-php-debug/out/phpDebug.js"}
}

require("dap.ext.vscode").load_launchjs()

dap.defaults.fallback.terminal_win_cmd = "80vsplit new"

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap("n", "<F1>", ":lua require('dap').terminate()<cr>", opts)
keymap("n", "<F2>", ":lua require('dap).continue()<cr>", opts)
keymap("n", "<F3>", ":lua require('dap').toggle_breakpoint()<cr>", opts)
keymap("n", "<F4>", ":lua require('dap').step_into()<cr>", opts)
keymap("n", "<F5>", ":lua require('dap').run_to_cursor()<cr>", opts)
