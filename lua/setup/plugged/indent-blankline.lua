vim.opt.list = true
vim.opt.listchars:append("eol:¬")
vim.g.indent_blankline_filetype_exclude = {"help", "NvimTree", "terminal"}

require("indent_blankline").setup {}
