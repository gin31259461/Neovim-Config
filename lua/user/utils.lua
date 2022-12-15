local M = {}


M.OSX = function ()
  return vim.fn.has("macunix")
end

M.LINUX = function ()
  return vim.fn.has("unix") and not vim.fn.has("macunix") and not vim.fn.has("win32unix")
end

M.WINDOWS = function ()
  return vim.fn.has("win16") or vim.fn.has("win32") or vim.fn.has("win64")
end

return M
