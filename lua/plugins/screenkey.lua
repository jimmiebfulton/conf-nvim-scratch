return {
  { "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*", -- or branch = "dev", to use the latest commit
    keys = {
      { mode = { "n"}, "<leader>uR", "<cmd>Screenkey toggle<CR>" },
    }, 
  },
}
