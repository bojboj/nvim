vim.api.nvim_exec(
[[
let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
]],
false)

local home = os.getenv('HOME')
local plug = vim.fn['plug#']

vim.call('plug#begin', home..'/.config/nvim/plugged')

-- colorscheme
plug('junegunn/seoul256.vim')

-- ui
plug('lewis6991/gitsigns.nvim')
plug('lukas-reineke/indent-blankline.nvim')
plug('kyazdani42/nvim-web-devicons')
plug('kyazdani42/nvim-tree.lua')
plug('nvim-lualine/lualine.nvim')
plug('kevinhwang91/nvim-bqf')

-- editorconfig
plug('editorconfig/editorconfig-vim')

-- telescope
plug('nvim-lua/plenary.nvim')
plug('nvim-telescope/telescope.nvim')

-- treesitter
plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- session
plug('rmagatti/auto-session')
plug('rmagatti/session-lens')

--  lsp
plug('neovim/nvim-lspconfig')
plug('williamboman/nvim-lsp-installer')
plug('hrsh7th/nvim-cmp')
plug('hrsh7th/cmp-nvim-lsp')
plug('hrsh7th/cmp-buffer')
plug('hrsh7th/cmp-path')

-- nvim-dap
plug('mfussenegger/nvim-dap')
plug('xdebug/vscode-php-debug', {dir = home..'/.config/nvim/tooling/dab_adapters/vscode-php-debug', ['do'] = 'npm install && npm run build'})

vim.call('plug#end')

require('setup.neovim')
require('setup.plugged.auto-session')
require('setup.plugged.gitsigns')
require('setup.plugged.indent-blankline')
require('setup.plugged.lualine')
require('setup.plugged.nvim-dap')
require('setup.plugged.nvim-lspconfig')
require('setup.plugged.nvim-tree')
require('setup.plugged.nvim-treesitter')
require('setup.plugged.telescope')
