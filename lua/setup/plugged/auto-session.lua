vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

local nvim_tree = require('nvim-tree');

local function close_nvim_tree()
    nvim_tree.close()
end

local function open_nvim_tree()
    nvim_tree.change_dir(vim.fn.getcwd())
    nvim_tree.refresh()
end

require('auto-session').setup {
  pre_save_cmds = {close_nvim_tree},
  post_restore_cmds = {open_nvim_tree},
  auto_session_create_enabled = false,
}

require('session-lens').setup {
  prompt_title = 'Sessions',
  path_display = {'shorten'},
}

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap('n', '<leader>z', ':SearchSession<cr>', opts)
