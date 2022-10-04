local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
[[                  *     .--.        ]],
[[                       / /  `       ]],
[[      +               | |           ]],
[[             '         \ \__,       ]],
[[         *          +   '--'  *     ]],
[[             +   /\                 ]],
[[+              .'  '.   *           ]],
[[       *      /======\      +       ]],
[[             ;:.  _   ;             ]],
[[             |:. (_)  |             ]],
[[             |:.  _   |             ]],
[[   +         |:. (_)  |          *  ]],
[[             ;:.      ;             ]],
[[           .' \:.    / `.           ]],
[[          / .-'':._.'`-. \          ]],
[[          |/    /||\    \|          ]],
[[        _..--"""````"""--.._	      ]],
[[  _.-'``                    ``'-._  ]],
[[-'                                '-]],
}

dashboard.section.buttons.val = {
  dashboard.button("SPC f f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("SPC b n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("SPC f p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("SPC f r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("SPC f t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":Explore " .. vim.fn.stdpath("config") .. "<CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}

dashboard.section.footer.val = "VoidVim"
dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
