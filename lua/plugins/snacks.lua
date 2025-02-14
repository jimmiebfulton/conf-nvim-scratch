return {
	{
		"folke/snacks.nvim",
		opts = {
			explorer = {
				replace_netrw = false,
			},
		},
    -- stylua: ignore
    keys = {
      { "<leader>/",  function() Snacks.picker.grep() end, desc = "Grep" },
      { "<leader>:",  function() Snacks.picker.command_history() end, desc = "Command History" },
      { "<leader>,",  function() Snacks.picker.buffers() end, desc = "Buffers" },

      { "<leader>e",  "<leader>fe", desc = "Explorer" },
      { "<leader>E",  "<leader>fE", desc = "Explorer Sidebar" },

      -- Find
      { "<leader>fb",  function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<leader>fe", function() Snacks.picker.explorer({ layout = "default", auto_close = true }) end, desc = "Explorer" },
      { "<leader>fE", function() Snacks.picker.explorer() end, desc = "Explorer Sidebar" },
      { "<leader>ff", function() Snacks.picker.files() end, desc = "Files" },
      { "<leader>fc", desc = "Config" },
      { "<leader>fcc", function() Snacks.picker.files({ dirs = { "~/.config/", }}) end, desc = "Config" },
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
      { "<leader>sL",  function() Snacks.picker.lines() end, desc = "Lines" },
      { "<leader>sm",  function() Snacks.picker.marks() end, desc = "Marks" },
      { "<leader>sM",  function() Snacks.picker.man() end, desc = "Man Pages" },
      { "<leader>snm", function() Snacks.picker.notifications() end, desc = "Messages" },
      { "<leader>sp",  function() Snacks.picker.pick() end, desc = "Pickers" },
      { "<leader>sP",  function() Snacks.picker.picker_layouts() end, desc = "Picker Layouts" },
      { "<leader>sq",  function() Snacks.picker.qflist() end, desc = "Quickfix List" },
      { "<leader>sr",  function() Snacks.picker.resume() end, desc = "Resume" },
      { "<leader>ss",  function() Snacks.picker.lsp_symbols() end, desc = "Sympols" },
      { "<leader>sS",  function() Snacks.picker.lsp_workspace_symbols() end, desc = "Project Sympols" },
      { "<leader>su",  function() Snacks.picker.undo() end, desc = "Undo" },
      { "<leader>sw",  function() Snacks.picker.grep_word() end, desc = "Grep Word" },
      { "<leader>sw",  function() Snacks.picker.grep_word() end, mode = "v", desc = "Grep Word" },
      { "<leader>sz",  function() Snacks.picker.zoxide() end, desc = "Zoxide" },
      { "<leader>sZ",  function() Snacks.picker.lazy() end, desc = "Lazy" },
      { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart" },

      -- Git
      { "<leader>gc",  function() Snacks.picker.git_log() end, desc = "Commits" },
      { "<leader>gd",  function() Snacks.picker.git_diff() end, desc = "Diffs" },
      { "<leader>gf",  function() Snacks.picker.git_log_file() end, desc = "File Commits" },
      { "<leader>gl",  function() Snacks.picker.git_log_line() end, desc = "Line Commits" },
      { "<leader>gs",  function() Snacks.picker.git_status() end, desc = "Status" },

      -- UI 
      { "<leader>uC",  function() Snacks.picker.colorschemes() end, desc = "Color Schemes" },
    },
	},

	{
		"neovim/nvim-lspconfig",
		optional = true,
		opts = function()
			local Keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- stylua: ignore
      vim.list_extend(Keys, {
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition", has = "definition" },
        { "gr", function() Snacks.picker.lsp_references() end, desc = "References", nowait = true },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
      })
		end,
	},
}
