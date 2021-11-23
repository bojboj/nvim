require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'c',
    'css',
    'html',
    'javascript',
    'json',
    'lua',
    'php',
    'vim',
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
