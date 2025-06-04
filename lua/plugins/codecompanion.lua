return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "CodeCompanion" },
  config = function()
  require("codecompanion").setup({
    adapters = {
      ollama_remote = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "ollama_remote",
          env = {
            url = "http://127.0.0.1:11434",
          },
          headers = {
            ["Content-Type"] = "application/json",
          },
          parameters = {
            sync = true,
          },
          schema = {
            model = {
              default = "incept5/llama3.1-claude",
            },
            num_ctx = {
              default = 16384,
            },
            num_predict = {
              default = -1,
            },
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = "ollama_remote",
      },
      inline = {
        adapter = "ollama_remote",
      },
      agent = {
        adapter = "ollama_remote",
      },
    },
  })
  end,
}
