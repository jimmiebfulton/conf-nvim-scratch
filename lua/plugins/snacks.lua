return {
  {
    "snacks.nvim",
    opts = {
    },
    -- stylua: ignore
    keys = {
      { "<leader>/",  function() Snacks.picker.grep() end, desc = "Grep" },
      { "<leader>:",  function() Snacks.picker.command_history() end, desc = "Command History" },
      { "<leader>,",  function() Snacks.picker.buffers() end, desc = "Buffers" },

      -- Find
      { "<leader>fb",  function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<leader>fE", function() Snacks.picker.explorer() end, desc = "Explorer" },
      { "<leader>fe", function() Snacks.picker.explorer({ layout = "default", auto_close = true }) end, desc = "Explorer" },
      { "<leader>ff", function() Snacks.picker.files() end, desc = "Files" },
      { "<leader>fc", desc = "Config" },
      { "<leader>fcc", function() Snacks.picker.files({ dirs = { "~/.config/", }}) end, desc = "Neovim" },
      { "<leader>fcn", function() Snacks.picker.files({ dirs = { "~/.config/nvim/", }}) end, desc = "Neovim" },
      { "<leader>fcf", function() Snacks.picker.files({ dirs = { "~/.config/fish/", }}) end, desc = "Fish" },
      { "<leader>fcy", function() Snacks.picker.files({ dirs = { "~/.config/yazi/", }}) end, desc = "Yazi" },
      { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Git Files" },
      { "<leader>fp",  function() Snacks.picker.projects() end, desc = "Projects" },
      { "<leader>fr",  function() Snacks.picker.recent() end, desc = "Recent" },
      { "<leader>fs", function() Snacks.picker.files() end, desc = "Smart" },

      -- Search
      { '<leader>s"',  function() Snacks.picker.registers() end, desc = "Registers" },
      { "<leader>sa",  function() Snacks.picker.autocmds() end, desc = "Auto Commands" },
      { "<leader>sb",  function() Snacks.picker.grep_buffers() end, desc = "Grep Buffers" },
      { "<leader>sc",  function() Snacks.picker.command_history() end, desc = "Command History" },
      { "<leader>sC",  function() Snacks.picker.commands() end, desc = "Commands" },
      { "<leader>sd",  function() Snacks.picker.diagnostics_buffer() end, desc = "Diagnostics (Buffer)" },
      { "<leader>sD",  function() Snacks.picker.diagnostics() end, desc = "Diagnostics (Project)" },
      { "<leader>sg",  function() Snacks.picker.grep() end, desc = "Grep" },
      { "<leader>sh",  function() Snacks.picker.help() end, desc = "Help" },
      { "<leader>sH",  function() Snacks.picker.highlights() end, desc = "Highlights" },
      { "<leader>si",  function() Snacks.picker.icons() end, desc = "Icons" },
      { "<leader>sj",  function() Snacks.picker.jumps() end, desc = "Jumps" },
      { "<leader>sk",  function() Snacks.picker.keymaps() end, desc = "Keys" },
      { "<leader>sl",  function() Snacks.picker.loclist() end, desc = "Location List" },
      { "<leader>sm",  function() Snacks.picker.marks() end, desc = "Marks" },
      { "<leader>sM",  function() Snacks.picker.man() end, desc = "Man Pages" },
      { "<leader>sp",  function() Snacks.picker.pick() end, desc = "Pickers" },
      { "<leader>sr",  function() Snacks.picker.resume() end, desc = "Resume" },
      { "<leader>sq",  function() Snacks.picker.qflist() end, desc = "Quickfix List" },
      { "<leader>su",  function() Snacks.picker.undo() end, desc = "Undo" },
      { "<leader>sw",  function() Snacks.picker.grep_word() end, desc = "Grep Word" },
      { "<leader>sw",  function() Snacks.picker.grep_word() end, mode = "v", desc = "Grep Word" },
      { "<leader>sz",  function() Snacks.picker.zoxide() end, desc = "Zoxide" },
      { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart" },

      -- Git
      { "<leader>gc",  function() Snacks.picker.git_log() end, desc = "Commits" },
      { "<leader>gd",  function() Snacks.picker.git_diff() end, desc = "Diffs" },
      { "<leader>gs",  function() Snacks.picker.git_status() end, desc = "Status" },

      -- UI 
      { "<leader>uC",  function() Snacks.picker.colorschemes() end, desc = "Color Schemes" },
    },
  },
}
