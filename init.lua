local home = os.getenv('HOME')
local plug = vim.fn['plug#']

vim.call('plug#begin', home..'/.config/nvim/plugged')

-- viml plugins
plug('junegunn/fzf', {dir = home..'/.fzf', ['do'] = './install --all'})
plug('junegunn/fzf.vim')
plug('junegunn/seoul256.vim')

-- lua plugins
plug('nvim-lua/plenary.nvim')
plug('tanvirtin/vgit.nvim')
plug('kyazdani42/nvim-tree.lua')
plug('lukas-reineke/indent-blankline.nvim')
plug('neovim/nvim-lspconfig')
plug('mfussenegger/nvim-dap')
plug('rcarriga/nvim-dap-ui')

-- non vim plugins
plug('xdebug/vscode-php-debug', {dir = home..'/.config/nvim/tooling/vscode-php-debug', ['do'] = 'npm install && npm run build'})

vim.call('plug#end')

vim.opt.rtp:append(home..'/.fzf') -- Add fzf path.
vim.opt.relativenumber = true     -- Enable number line.
vim.opt.mouse = 'a'               -- Mouse support.
vim.opt.laststatus = 2            -- Always show status bar.

vim.g.seoul256_background = 239
vim.cmd('colo seoul256')

local keymap = vim.api.nvim_set_keymap
-- Remove trailing white spaces.
keymap('n', '<silent> <Leader>ws', ':%s/s+$//e<CR>', {noremap = true})
-- Clear search highlights.
keymap('n', '<silent> <Leader><space>', ':noh<CR>', {noremap = true})
-- Search word in cursor without moving.
keymap('n', '*', '*``', {noremap = true})
keymap('n', '#', '#``', {noremap = true})

require('lspconfig').intelephense.setup {}
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = false
	}
)

vim.opt.list = true
vim.opt.listchars:append("eol:↴")

require('vgit').setup {}
require("indent_blankline").setup {
	show_end_of_line = true,
}

vim.g.nvim_tree_show_icons = {git = 1, folder = 0, files = 0}
require('nvim-tree').setup {}

local dap = require('dap')
dap.adapters.php = {
	type = 'executable',
	command = 'node',
	args = {home..'/.config/nvim/tooling/vscode-php-debug/out/phpDebug.js'}
}
require('dap.ext.vscode').load_launchjs()
