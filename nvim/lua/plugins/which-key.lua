return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 420,
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    icons = {
      mappings = false,
      keys = {
        Up = "˄",
        Down = "˅",
        Left = "˂",
        Right = "˃",
        C = "C",
        M = "M",
        D = "D",
        S = "S",
        CR = "CR",
        Esc = "ESC",
        ScrollWheelDown = "˯",
        ScrollWheelUp = "˰",
        NL = "NL",
        BS = "BS",
        Space = "―",
        Tab = "TAB",
        F1 = "F1",
        F2 = "F2",
        F3 = "F3",
        F4 = "F4",
        F5 = "F5",
        F6 = "F6",
        F7 = "F7",
        F8 = "F8",
        F9 = "F9",
        F10 = "F10",
        F11 = "F11",
        F12 = "F12",
      },
    },
  },

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
