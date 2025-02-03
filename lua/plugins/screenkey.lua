return {
  { "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*", -- or branch = "dev", to use the latest commit
    keys = {
      { mode = { "n"}, "<leader>uK", "<cmd>Screenkey toggle<CR>" },
    }, 
  },
}
