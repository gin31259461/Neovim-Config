local colors = require("user.highlight.theme.tokyonight").base_30
local config = {}

config = {
  IndentBlanklineChar = { fg = colors.line },
  IndentBlanklineSpaceChar = { fg = colors.line },
  IndentBlanklineContextChar = { fg = colors.grey },
  IndentBlanklineContextStart = { bg = colors.one_bg2 },
}

for k, v in pairs(config) do
  vim.api.nvim_set_hl(0, k, v)
end
