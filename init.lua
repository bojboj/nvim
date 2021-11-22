local home = os.getenv('HOME')
local plug = vim.fn['plug#']

vim.call('plug#begin', home..'/.config/nvim/plugged')

-- vim plugins
plug('junegunn/fzf', {dir = home..'/.fzf', ['do'] = './install --all'})
plug('junegunn/fzf.vim')
plug('junegunn/seoul256.vim')
plug('mhinz/vim-grepper')
plug('editorconfig/editorconfig-vim')

-- neovim plugins
plug('nvim-lua/plenary.nvim')
plug('lewis6991/gitsigns.nvim')
plug('kyazdani42/nvim-tree.lua')
plug('lukas-reineke/indent-blankline.nvim')
plug('nvim-lualine/lualine.nvim')

--  lsp
plug('neovim/nvim-lspconfig')
plug('hrsh7th/nvim-cmp')
plug('hrsh7th/cmp-nvim-lsp')
plug('hrsh7th/cmp-buffer')
plug('hrsh7th/cmp-path')

-- nvim-dap
plug('mfussenegger/nvim-dap')
plug('xdebug/vscode-php-debug', {dir = home..'/.config/nvim/tooling/vscode-php-debug', ['do'] = 'npm install && npm run build'})

vim.call('plug#end')

require('setup')
