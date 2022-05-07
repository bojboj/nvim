vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "bash",
    "c",
    "c_sharp",
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "php",
    "yaml"
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}
