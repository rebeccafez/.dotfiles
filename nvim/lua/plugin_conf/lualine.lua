require("lualine").setup({
  options = {
    theme = "auto",
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      {
        "filetype",
        icon_only = true,
        separator = "",
        padding = { left = 1, right = 0 }
      },
      {
        "filename",
        path = 1,
        symbols = {
          modified = "  ",
          readonly = "  ",
          unnamed = "  ",
        }
      }
    },
    lualine_x = {
      {
        "diagnostics",
        symbols = {
          error = "",
          warn = "",
          info = "",
          hint = "󰴓",
        }
      },
    },
  }
})
