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

require('setup')
