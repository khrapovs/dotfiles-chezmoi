-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.python3_host_prog = "~/.pyenv/versions/3.12.1/bin/python"

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
