vim.api.nvim_create_augroup("AutoFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = "AutoFormatting",
  callback = function()
    vim.lsp.buf.format()
  end
})
