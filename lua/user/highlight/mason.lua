local colors = require("user.highlight.theme.tokyonight").base_30
local config = {}

config = {
  MasonHeader = { bg = colors.red, fg = colors.black },
  MasonHighlight = { fg = colors.blue },
  MasonHighlightBlock = { fg = colors.black, bg = colors.green },
  MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
  MasonHeaderSecondary = { link = "MasonHighlightBlock" },
  MasonMuted = { fg = colors.light_grey },
  MasonMutedBlock = { fg = colors.light_grey, bg = colors.one_bg },
}

for k, v in pairs(config) do
  vim.api.nvim_set_hl(0, k, v)
end
