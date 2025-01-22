return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      tsserver = {
        mason = false,
      },
      vtsls = {
        mason = false,
      },
      ts_ls = {
        cmd = { "typescript-language-server", "--stdio" }, -- Ensure the correct executable is used
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }, -- Specify supported filetypes
        root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", ".git"), -- Define project root detection
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "relative",
            },
          },
          javascript = {
            preferences = {
              importModuleSpecifier = "relative",
            },
          },
        },
      },
      eslint = {
        -- Configure filetypes for ESLint
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte" },
        -- Custom settings for ESLint
        settings = {
          validate = "on",
          packageManager = "pnpm", -- Can be 'yarn' or 'pnpm' depending on your project
          autoFixOnSave = false,
          codeActionOnSave = {
            enable = false,
            mode = "all",
          },
          run = "onSave",
          format = false,
        },
        -- Flags for LSP performance
        flags = {
          debounce_text_changes = 250, -- Adjust debounce time as needed
        },
        -- cmd = {
        --   "node",
        --   "--max-old-space-size=8096", -- Increase memory to 8GB
        --   "/Users/user/.nvm/versions/node/v22.13.0/bin/eslint",
        --   -- vim.fn.stdpath("data") .. "/mason/packages/vscode-eslint-language-server/bin/vscode-eslint-language-server",
        --   "--stdio",
        -- },
      },
    },
    -- Disable eslint formatting as it's slow and timing out on big projects
    -- taken from
    -- https://github.com/LazyVim/LazyVim/pull/4225/files
    -- setup = {
    --   eslint = {
    --     flags = {
    --       debounce_text_changes = 1000,
    --     },
    --   },
    -- },
  },
}
