require('lualine').setup {
  options = {
    theme = 'seoul256',
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
  },
  tabline = {
    lualine_b = {
      {
        'tabs',
        mode = 1,
      }
    }
  }
}
