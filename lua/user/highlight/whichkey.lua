local colors = require("user.highlight.theme.tokyonight").base_30
local config = {}

config = {
  WhichKey = { fg = colors.blue },
  WhichKeySeparator = { fg = colors.light_grey },
  WhichKeyDesc = { fg = colors.red },
  WhichKeyGroup = { fg = colors.green },
  WhichKeyValue = { fg = colors.green },
}

for k, v in pairs(config) do
  vim.api.nvim_set_hl(0, k, v)
end
