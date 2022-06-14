require('nvim_comment').setup({
  marker_padding = true,
  comment_empty = false,
  create_mappings = true,
  line_mapping = "<leader>c",
  operator_mapping = "gc",
  hook = nil
})

vim.cmd([[
autocmd BufEnter *.tsx,*.ts,*.js,*.cs :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
autocmd BufFilePost *.tsx,*.ts,*.js,*.cs :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
]])
