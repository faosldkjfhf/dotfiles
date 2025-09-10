return {
  {
    "rebelot/kanagawa.nvim",
    opts = {},
  },
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local lackluster = require("lackluster")
      require("nvim-web-devicons").setup({
        color_icons = false,
        override = {
          ["default_icon"] = {
            color = lackluster.color.gray4,
            name = "Default",
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster-hack",
    },
  },
}
