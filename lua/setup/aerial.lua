require("aerial").setup({
  backends = {"lsp", "treesitter", "markdown"},
  filter_kind = false,
  show_guides = true,
  on_attach = function(bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
  end
})
