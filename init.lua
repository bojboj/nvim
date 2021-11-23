local home = os.getenv('HOME')
local plug = vim.fn['plug#']

vim.call('plug#begin', home..'/.config/nvim/plugged')

-- colorscheme
plug('junegunn/seoul256.vim')

-- ui
plug('kyazdani42/nvim-web-devicons')
plug('kyazdani42/nvim-tree.lua')
plug('lukas-reineke/indent-blankline.nvim')
plug('nvim-lualine/lualine.nvim')
plug('lewis6991/gitsigns.nvim')

-- editorconfig
plug('editorconfig/editorconfig-vim')

-- telescope
plug('nvim-lua/plenary.nvim')
plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
plug('nvim-telescope/telescope.nvim')

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
