local home = os.getenv('HOME')

vim.opt.hidden = true             -- Enable buffer to be hidden.
vim.opt.laststatus = 2            -- Always show status bar.
vim.opt.mouse = 'a'               -- Mouse support.
vim.opt.number = true             -- Enable number line.
vim.opt.relativenumber = true     -- Enable relative number line.
vim.opt.termguicolors = true      -- Enable rgb colors.
vim.opt.rtp:append(home..'/.fzf') -- Add fzf path.

vim.cmd('colo seoul256')

local keymap = vim.api.nvim_set_keymap

-- Clear search highlights.
keymap('n', '<Leader><space>', ':noh<CR>', {noremap = true, silent = true})

-- Search word in cursor without moving.
keymap('n', '*', '*``', {noremap = true, silent = true})
keymap('n', '#', '#``', {noremap = true, silent = true})
