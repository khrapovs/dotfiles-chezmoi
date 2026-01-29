-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.python3_host_prog = "/opt/homebrew/bin/python3"

require("lspconfig").pyright.setup({
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
})

require("lspconfig").basedpyright.setup({
  settings = {
    basedpyright = {
      analysis = {
        diagnosticMode = "openFilesOnly",
        typeCheckingMode = "standard",
        inlayHints = {
          callArgumentNames = false,
          variableTypes = false,
          functionReturnTypes = false,
          parameterTypes = false,
        },
      },
    },
  },
})
