return {
  { "slugbyte/lackluster.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster-hack",
    },
    init = function()
      local lackluster = require("lackluster")

      lackluster.setup({
        disable_plugin = {},
        tweak_background = {
          normal = "#000000",
        },
      })
    end,
  },
}
