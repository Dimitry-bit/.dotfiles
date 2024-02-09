return {
  {
    "onsails/lspkind.nvim",
  },

  {
    "hrsh7th/nvim-cmp",
    dependency = { "onsails/lspkind.nvim" },
    opts = function(_, opts)
      local cmp = require("cmp")
      local muffin = require("config.muffin")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<TAB>"] = cmp.mapping.confirm({ select = true }),
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      })

      opts.window = {
        completion = {
          scrollbar = false,
        },
      }

      opts.formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local icons = muffin.icons.kinds
          local icon = icons[vim_item.kind]

          -- Enable icons
          local kind = require("lspkind").cmp_format({
            mode = "symbol",
            maxwidth = 50,
            ellipsis_char = "...",
          })(entry, vim_item)

          -- Trim long function definitions
          local menu_maxwidth = 30
          if vim.fn.strchars(kind.menu) > menu_maxwidth then
            local menu_ellipsis_char = "..."
            kind.menu = vim.fn.strcharpart(kind.menu, 0, menu_maxwidth) .. (menu_ellipsis_char or "")
          end

          kind.kind = (icon or "")
          kind.menu = " " .. (kind.menu or "")

          return kind
        end,
      }
    end,
  },

  {
    "echasnovski/mini.comment",
    opts = {
      options = {
        ignore_blank_line = true,
      },
      mappings = {
        -- Toggle comment on current line
        comment_line = "<M-/>",
        -- Toggle comment on visual selection
        comment_visual = "<M-/>",
      },
    },
  },
}
