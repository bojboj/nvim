require("dap.ext.vscode").load_launchjs()

local dap_installation_path = os.getenv("HOME") .. "/.config/nvim/tooling/dap_adapters/"
local dap = require('dap')

dap.adapters.python = {
  type = "server";
  host = "127.0.0.1";
  port = 5678
}

dap.adapters.php = {
  type = "executable",
  command = "node",
  args = {dap_installation_path .. "php/vscode-php-debug/out/phpDebug.js"}
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap("n", "<leader>1", ":lua require('dap').repl.toggle()<cr>", {noremap = true, silent = true})
keymap("n", "<leader>2", ":lua require('dap').continue()<cr>", opts)
keymap("n", "<leader>3", ":lua require('dap').toggle_breakpoint()<cr>", opts)
