return {
  "saghen/blink.cmp",
  opts = {
    keymap = { preset = "default" },
    completion = {
      trigger = {
        show_on_blocked_trigger_characters = { "<" },
      },
      accept = {
        auto_brackets = { enabled = false },
      },
      ghost_text = { enabled = false },
      documentation = { auto_show = false },
    },
    signature = { enabled = true },
  },
}
