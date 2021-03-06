require("lualine").setup({
  options = {
    component_separators = {left = "", right = ""},
    section_separators = {left = "", right = ""},
    disabled_filetypes = {"help", "NvimTree", "aerial"}
  },
  sections = {
    lualine_c = {
      {
        "filename",
        file_status = true,
        path = 1
      }
    }
  }
})
