local dap_install = require("dap-install")
local dap_installation_path = os.getenv("HOME") .. "/.config/nvim/tooling/dap_adapters/"

dap_install.setup({
  installation_path = dap_installation_path
})

dap_install.config(
  "php",
  {
    adapters = {
      type = "executable",
      command = "node",
      args = {dap_installation_path .. "php/vscode-php-debug/out/phpDebug.js"}
    },
    configurations = {}
  }
)

require("dap.ext.vscode").load_launchjs()
require("dapui").setup()

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap("n", "<leader>1", ":lua require('dapui').toggle()<cr>", {noremap = true, silent = true})
keymap("n", "<leader>2", ":lua require('dap').terminate()<cr>", opts)
keymap("n", "<leader>3", ":lua require('dap').continue()<cr>", opts)
keymap("n", "<leader>4", ":lua require('dap').toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>5", ":lua require('dap').step_over()<cr>", opts)
keymap("n", "<leader>6", ":lua require('dap').step_into()<cr>", opts)
keymap("n", "<leader>7", ":lua require('dap').step_out()<cr>", opts)
keymap("n", "<leader>8", ":lua require('dap').run_to_cursor()<cr>", opts)