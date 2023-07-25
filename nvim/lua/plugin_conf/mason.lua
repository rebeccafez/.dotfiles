require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "emmet_ls", "rust_analyzer" }
})
