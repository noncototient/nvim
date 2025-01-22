-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").tsserver.setup({
  flags = {
    debounce_text_changes = 1000, -- Set debounce time for text changes (ms)
  },
  handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      timeout = 5000, -- Set hover timeout to 5000ms
    }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      timeout = 3000, -- Set signature help timeout to 3000ms
    }),
  },
})

-- vim.env.ESLINT_D_PPID = vim.fn.getpid()
-- local lint = require("lint")
-- -- Enable linter for JavaScript/TypeScript files
-- lint.linters.eslint = nil
-- lint.linters_by_ft = {
--   javascript = { "eslint_d" },
--   javascriptreact = { "eslint_d" },
--   typescript = { "eslint_d" },
--   typescriptreact = { "eslint_d" },
-- }
-- lint.linters.eslint_d = {
--   cmd = "eslint_d", -- command for eslint_d
--   stdin = true,
--   args = { "--stdin", "--stdin-filename", "%filepath" },
--   stream = "stdout",
--   ignore_exitcode = true,
--   on_output = function(_, bufnr, lines)
--     vim.fn.setqflist({}, " ", {
--       title = "eslint_d",
--       lines = lines,
--       bufnr = bufnr,
--     })
--   end,
-- }
