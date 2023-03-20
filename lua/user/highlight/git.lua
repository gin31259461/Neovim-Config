local colors = require("user.highlight.theme.tokyonight").base_30
local theme = require("user.highlight.theme.tokyonight").base_16
local config = {}

config = {

  DiffAdd = {
    fg = colors.blue,
  },

  DiffAdded = {
    fg = colors.green,
  },

  DiffChange = {
    fg = colors.light_grey,
  },

  DiffChangeDelete = {
    fg = colors.red,
  },

  DiffModified = {
    fg = colors.orange,
  },

  DiffDelete = {
    fg = colors.red,
  },

  DiffRemoved = {
    fg = colors.red,
  },

  -- git commits
  gitcommitOverflow = {
    fg = theme.base08,
  },

  gitcommitSummary = {
    fg = theme.base08,
  },

  gitcommitComment = {
    fg = theme.base03,
  },

  gitcommitUntracked = {
    fg = theme.base03,
  },

  gitcommitDiscarded = {
    fg = theme.base03,
  },

  gitcommitSelected = {
    fg = theme.base03,
  },

  gitcommitHeader = {
    fg = theme.base0E,
  },

  gitcommitSelectedType = {
    fg = theme.base0D,
  },

  gitcommitUnmergedType = {
    fg = theme.base0D,
  },

  gitcommitDiscardedType = {
    fg = theme.base0D,
  },

  gitcommitBranch = {
    fg = theme.base09,
    bold = true,
  },

  gitcommitUntrackedFile = {
    fg = theme.base0A,
  },

  gitcommitUnmergedFile = {
    fg = theme.base08,
    bold = true,
  },

  gitcommitDiscardedFile = {
    fg = theme.base08,
    bold = true,
  },

  gitcommitSelectedFile = {
    fg = theme.base0B,
    bold = true,
  },
}

for k, v in pairs(config) do
  vim.api.nvim_set_hl(0, k, v)
end
