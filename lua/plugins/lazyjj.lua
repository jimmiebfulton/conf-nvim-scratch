return {
  {
      'swaits/lazyjj.nvim',
      dependencies = 'nvim-lua/plenary.nvim',
      opts = {},
      keys = {
        { "<leader>j", desc = "JJ" },
        { "<leader>jj", "<cmd>LazyJJ", desc = "LazyJJ" },
      },
  }
}

