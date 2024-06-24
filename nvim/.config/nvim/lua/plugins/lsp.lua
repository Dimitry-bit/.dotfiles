return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<M-Return>", vim.lsp.buf.code_action }

      if require("lazyvim.util").has("inc-rename.nvim") then
        keys[#keys + 1] = { "<leader>rn", ":IncRename ", desc = "rename", has = "rename" }
      else
        keys[#keys + 1] = { "<leader>rn", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
      end
    end,
  },

  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      -- stylua: ignore start
      { "<leader>rm", function() require("refactoring").refactor("Extract Function") end, desc = "Extract Function" },
      { "<leader>rM", function() require("refactoring").refactor("Extract Function To File") end, desc = "Extract Function To File" },
      { "<leader>rv", function() require("refactoring").refactor("Extract Variable") end, desc = "Extract Variable" },
      { "<leader>rI", function() require("refactoring").refactor("Inline Function") end, desc = "Inline Function" },
      { "<leader>ri", function() require("refactoring").refactor("Inline Variable") end, desc = "Inline Variable" },
      { "<leader>rb", function() require("refactoring").refactor("Extract Block") end, desc = "Extract Block" },
      { "<leader>rB", function() require("refactoring").refactor("Extract Block To File") end, desc = "Extract Block To File" },
      -- stylua: ignore end
    },

    config = function()
      require("refactoring").setup({ show_success_message = true })
      require("telescope").load_extension("refactoring")({
        "<leader>rr",
        function()
          require("telescope").extensions.refactoring.refactors()
        end,
        desc = "Refactor",
      })
    end,
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
}
