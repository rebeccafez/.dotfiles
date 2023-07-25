require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "toml", "rust" },

  highlight = {
    enable = true
  }
})
