vim.opt.ignorecase = true     -- Ignore case when searching.
vim.opt.smartcase = true      -- Case sensitive if searching with uppercase.
vim.opt.hidden = true         -- Enable buffer to be hidden.
vim.opt.mouse = "a"           -- Mouse support.
vim.opt.number = true         -- Enable number line.
vim.opt.relativenumber = true -- Enable relative number line.
vim.opt.termguicolors = true  -- Enable rgb colors.
vim.opt.swapfile = false      -- Disable swapfile.
vim.opt.autoread = true       -- Update file that was modified outside.

vim.cmd("colo seoul256")

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Search word in cursor without moving.
keymap("n", "*", "*``", opts)
keymap("n", "#", "#``", opts)
