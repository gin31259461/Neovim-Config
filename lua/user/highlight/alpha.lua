local colors = require("user.highlight.theme.tokyonight").base_30
vim.api.nvim_set_hl(0, "AlphaHeader", { fg = colors.grey_fg })
vim.api.nvim_set_hl(0, "AlphaButtons", { fg = colors.light_grey })
