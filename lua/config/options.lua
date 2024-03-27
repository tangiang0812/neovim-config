-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.completeopt = { "menu", "menuone", "noinsert" }

if vim.g.neovide then
  -- vim.g.neovide_transparency = 0.85
  --[[ vim.g.neovide_scale_factor = 1.0 ]]
  -- vim.g.neovide_scale_factor = 1
  -- vim.g.neovide_scroll_animation_length = 1
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  -- vim.g.neovide_cursor_vfx_particle_density = 10.0
  -- vim.g.neovide_cursor_vfx_particle_phase = 1.5
  -- vim.opt.guifont = { "JetBrainsMono Nerd Font:h7.3" }
  vim.opt.guifont = { "JetBrainsMono Nerd Font:h11" }
end
