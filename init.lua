vim.api.nvim_exec(
[[
let data_dir = "~/.config/nvim"
if empty(glob(data_dir . "/autoload/plug.vim"))
  silent execute "!curl -fLo " . data_dir . "/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
]],
false)

local home = os.getenv("HOME")
local plug = vim.fn["plug#"]

vim.call("plug#begin", home .. "/.config/nvim/plugged")

-- colorscheme
plug("EdenEast/nightfox.nvim")

-- ui
plug("kyazdani42/nvim-web-devicons")
plug("kyazdani42/nvim-tree.lua")
plug("stevearc/aerial.nvim")
plug("kevinhwang91/nvim-bqf")
plug("lukas-reineke/indent-blankline.nvim")
plug("nvim-lualine/lualine.nvim")
plug("lewis6991/gitsigns.nvim")

-- editorconfig
plug("editorconfig/editorconfig-vim")

-- telescope
plug("nvim-lua/plenary.nvim")
plug("nvim-telescope/telescope.nvim")

-- treesitter
plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})

-- lsp
plug("neovim/nvim-lspconfig")
plug("williamboman/nvim-lsp-installer")
plug("hrsh7th/nvim-cmp")
plug("hrsh7th/cmp-nvim-lsp")
plug("hrsh7th/cmp-buffer")
plug("hrsh7th/cmp-path")

-- nvim-dap
plug("mfussenegger/nvim-dap")
plug("Pocco81/dap-buddy.nvim", {["branch"] = "dev"})
plug("rcarriga/nvim-dap-ui")

vim.call("plug#end")

require("setup.aerial")
require("setup.colorscheme")
require("setup.gitsigns")
require("setup.indent-blankline")
require("setup.lualine")
require("setup.neovim")
require("setup.nvim-dap")
require("setup.nvim-lspconfig")
require("setup.nvim-tree")
require("setup.nvim-treesitter")
require("setup.telescope")
