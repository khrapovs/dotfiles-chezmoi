return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "ollama",
          model = "deepseek-r1",
          url = "http://localhost:11434",
        },
        inline = {
          adapter = "ollama",
          model = "deepseek-r1",
          url = "http://localhost:11434",
        },
      },
      -- strategies = {
      --   chat = {
      --     adapter = "anthropic",
      --   },
      --   inline = {
      --     adapter = "anthropic",
      --   },
      -- },
    })
  end,
}
