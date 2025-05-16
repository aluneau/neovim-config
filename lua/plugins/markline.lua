return {
  "chentoast/marks.nvim",
  event = "BufReadPost",
  config = function()
    require("marks").setup({
      default_mappings = true,
      builtin_marks = { ".", "<", ">", "^" },
      cyclic = true,
      force_write_shada = false,
      refresh_interval = 250,
      sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },

      bookmark_0 = {
        sign = "⚑",
        virt_text = "bookmark",
        annotate = false,
      },

      -- You can define up to 10 bookmarks with <leader>0 to <leader>9
      mappings = {}
    })
  end,
}
