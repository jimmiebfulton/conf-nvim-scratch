return {
  {
    "snacks.nvim",
    opts = {
    },
    -- stylua: ignore
    keys = {
      { "<leader>sp",  function() Snacks.picker.pick() end, desc = "Pickers" },
    },
  },
}
