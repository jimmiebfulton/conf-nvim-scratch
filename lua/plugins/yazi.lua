return {

  ---@type LazySpec
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<leader>fy",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open Yazi (cwd)",
      },
      {
        -- NOTE: this requires a version of yazi that includes
        -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
        "<leader>fY",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume Yazi",
      },
    },
    ---@type YaziConfig
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = true,
      open_multiple_tabs = true,
      keymaps = {
        show_help = "<f1>",
        cycle_open_buffers = "<tab>",
      },
    }

  }
}
