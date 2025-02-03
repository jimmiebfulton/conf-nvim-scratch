-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.root_spec = { "lsp", { ".jj", ".git", "lua" }, "cwd" }
vim.opt.timeoutlen = 500

if vim.g.neovide then
    vim.g.neovide_cursor_vfx_mode = "torpedo"
    vim.g.neovide_cursor_vfx_particle_lifetime = 2.0
    vim.g.neovide_cursor_vfx_opacity = 400.0
    vim.g.neovide_fullscreen = true
    vim.g.neovide_transparency = 0.95
    vim.g.neovide_normal_opacity = 0.95
end
