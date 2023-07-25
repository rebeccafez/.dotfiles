local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Pretty colors
  "ellisonleao/gruvbox.nvim",

  -- File manager
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },

  -- Bracket matching
  "windwp/nvim-autopairs",

  -- Status line
  "nvim-lualine/lualine.nvim",

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",

  -- LSP and autocompletions
  "neovim/nvim-lspconfig",

  -- External tooling manager
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig",

  -- Autocomplete
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",

  -- Snippet engine
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",

  -- Rust stuff
  "simrat39/rust-tools.nvim"
}
local opts = {}

require("lazy").setup(plugins, opts)
