return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below

      -- keywords = {
      --   FIX = {
      --     icon = " ", -- icon used for the sign, and in search results
      --     color = "error", -- can be a hex color, or a named color (see below)
      --     alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      --     -- signs = false, -- configure signs for some keywords individually
      --   },
      --   TODO = { icon = " ", color = "info" },
      --   HACK = { icon = " ", color = "warning" },
      --   WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      --   PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      --   NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      --   TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      -- },
    },
    keys = {
      { "<leader>st", function() Snacks.picker.todo_comments() end, desc = "Todo" },
      -- { "<leader>sT", function () Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) end, desc = "Todo/Fix/Fixme" },
    },
  }
}
