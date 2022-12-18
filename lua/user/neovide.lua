if (vim.fn.exists("neovide")) then
  vim.cmd [[ set guifont=FiraCode_Nerd_Font_Mono:h12 ]]
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_refresh_rate = 60
end
