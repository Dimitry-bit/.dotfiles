local Util = require("lazyvim.util")

return {
  {
    "anuvyklack/windows.nvim",
    lazy = false,
    dependencies = { "anuvyklack/middleclass" },
    config = function()
      require("windows").setup()
      vim.keymap.set("n", "<M-m>", "<cmd>WindowsMaximize<cr>")
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<M-e>",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
        end,
      },
      {
        "<M-E>",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
    },
    opts = {
      window = {
        position = "current",
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>.", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
    },
  },

  {
    "folke/trouble.nvim",
    keys = {
      { "<M-p>", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
      { "<M-P>", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    },
  },

  {
    "echasnovski/mini.bufremove",
    keys = {
      {
        "<C-q>",
        function()
          require("mini.bufremove").delete(0, true)
        end,
        desc = "Delete Buffer (Force)",
      },
    },
  },

  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },
}
