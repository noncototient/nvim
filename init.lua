-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").tsserver.setup({
  flags = {
    debounce_text_changes = 150, -- Set debounce time for text changes (ms)
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
