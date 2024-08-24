return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          component_separators = "",
          section_separators = "",
          always_divide_middle = true,
          theme = "catppuccin",
        },
      })
    end,
  },

  {
    "j-hui/fidget.nvim",
    opts = {
      notification = {
        override_vim_notify = true, -- Automatically override vim.notify() with Fidget
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "╎",
      },
    },
  },

  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "╎",
    },
  },
}
