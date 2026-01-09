local theme = {
  fill = "TabLineFill",
  current_tab = "TabLineSel",
  head = "TabLineFill",
  tab = "TabLine",
  win = "TabLine",
  tail = "TabLineSel",
}

return {
  "nanozuki/tabby.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  ---@type TabbyConfig
  opts = {},
  config = function()
    require("tabby.tabline").set(function(line)
      local cwd = " " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") .. " "
      return {
        {
          {
            { cwd, hl = theme.head },
            line.sep("", theme.head, theme.fill),
          },
        },
        line.tabs().foreach(function(tab)
          local hl = tab.is_current() and theme.current_tab or theme.tab
          return {
            line.sep("", hl, theme.fill),
            tab.is_current() and "" or "",
            tab.number(),
            line.sep("", hl, theme.fill),
            hl = hl,
            margin = " ",
          }
        end),
        line.spacer(),
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
          return {
            line.sep("", theme.win, theme.fill),
            win.is_current() and "" or "",
            win.buf_name(),
            line.sep("", theme.win, theme.fill),
            hl = theme.win,
            margin = " ",
          }
        end),
        {
          line.sep("", theme.tail, theme.fill),
          { "  ", hl = theme.tail },
        },
      }
    end, {
      theme = theme,
      tab_name = {
        name_fallback = function(tabid)
          return string(tabid)
        end,
      },
      buf_name = {
        mode = "unique",
      },
    })
  end,
}
