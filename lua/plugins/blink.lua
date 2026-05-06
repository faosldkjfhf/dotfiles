return {
  "saghen/blink.cmp",
  opts = {
    keymap = { preset = "default" },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    completion = {
      menu = { border = "rounded" },
      trigger = {
        show_on_blocked_trigger_characters = { "<" },
      },
      accept = {
        auto_brackets = { enabled = false },
      },
      ghost_text = { enabled = false },
      documentation = { auto_show = true, border = "rounded" },
    },
    signature = { enabled = true, border = "rounded" },
  },
}
