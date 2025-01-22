return {
  { "Mofiqul/vscode.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
    init = function()
      local vscode = require("vscode")

      vscode.setup({
        transparent = true,
        disable_nvimtree_bg = true,
        color_overrides = {
          vscBack = "#000000",
        },
      })
    end,
  },
}
