vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

local nvim_tree = require('nvim-tree')

local function close_nvim_tree()
  nvim_tree.close()
end

local function refresh_nvim_tree()
  nvim_tree.change_dir(vim.fn.getcwd())
end

require('auto-session').setup {
  pre_save_cmds = {close_nvim_tree},
  post_restore_cmds = {refresh_nvim_tree},
  auto_session_create_enabled = false,
}

require('session-lens').setup {
  prompt_title = 'Sessions',
  path_display = {'shorten'},
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n', '<leader>z', ':SearchSession<cr>', opts)
