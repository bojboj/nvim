vim.opt.list = true
vim.opt.listchars:append("eol:¬")
vim.g.indent_blankline_filetype_exclude = {"help", "NvimTree"}
vim.g.indent_blankline_buftype_exclude = {"terminal"}

require("indent_blankline").setup()
