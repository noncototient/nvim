return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      {
        "<C-t>",
        "<cmd>ToggleTerm<cr>",
        desc = "Toggle terminal",
      },
    },
    opts = {
      open_mapping = [[<C-t>]],
      size = 20,
      shell = "/usr/sbin/fish",
    },
  },
}
