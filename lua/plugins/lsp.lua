return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    -- Disable eslint formatting as it's slow and timing out on big projects
    -- taken from
    -- https://github.com/LazyVim/LazyVim/pull/4225/files
    setup = {
      eslint = function()
        return
      end,
    },
  },
}
