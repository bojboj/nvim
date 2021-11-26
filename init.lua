local home = os.getenv('HOME')
local plug = vim.fn['plug#']

vim.call('plug#begin', home..'/.config/nvim/plugged')

-- colorscheme
plug('junegunn/seoul256.vim')

-- ui
plug('kyazdani42/nvim-web-devicons')
plug('kyazdani42/nvim-tree.lua', {tag = '1.6.7'})
plug('lukas-reineke/indent-blankline.nvim', {tag = 'v2.10.6'})
plug('nvim-lualine/lualine.nvim')
plug('lewis6991/gitsigns.nvim', {tag = 'v0.3'})

-- editorconfig
plug('editorconfig/editorconfig-vim')

-- telescope
plug('nvim-lua/plenary.nvim')
plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
plug('nvim-telescope/telescope.nvim')

--  lsp
plug('neovim/nvim-lspconfig')
plug('williamboman/nvim-lsp-installer')
plug('hrsh7th/nvim-cmp')
plug('hrsh7th/cmp-nvim-lsp')
plug('hrsh7th/cmp-buffer')
plug('hrsh7th/cmp-path')

-- nvim-dap
plug('mfussenegger/nvim-dap')
plug('xdebug/vscode-php-debug', {tag = 'v1.22.0', dir = home..'/.config/nvim/tooling/dab_adapters/vscode-php-debug', ['do'] = 'npm install && npm run build'})

vim.call('plug#end')

require('setup')
