local home = os.getenv('HOME')

vim.opt.hidden = true             -- Enable buffer to be hidden.
vim.opt.laststatus = 2            -- Always show status bar.
vim.opt.mouse = 'a'               -- Mouse support.
vim.opt.relativenumber = true     -- Enable number line.
vim.opt.rtp:append(home..'/.fzf') -- Add fzf path.

vim.g.seoul256_background = 239
vim.cmd('colo seoul256')

local keymapping = vim.api.nvim_set_keymap

-- Remove trailing white spaces.
keymapping('n', '<Leader>ws', ':%s/s+$//e<CR>', {noremap = true, silent = true})

-- Clear search highlights.
keymapping('n', '<Leader><space>', ':noh<CR>', {noremap = true, silent = true})

-- Search word in cursor without moving.
keymapping('n', '*', '*``', {noremap = true, silent = true})
keymapping('n', '#', '#``', {noremap = true, silent = true})
