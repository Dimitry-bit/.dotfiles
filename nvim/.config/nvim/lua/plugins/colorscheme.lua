return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        fidget = true,
        mason = true,
        neotree = true,
        telescope = {
          enabled = true,
          style = "nvchad",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin-mocha" },
  },
}
