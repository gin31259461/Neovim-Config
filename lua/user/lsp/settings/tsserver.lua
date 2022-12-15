local M = {}

function OSX()
  return vim.fn.has("macunix")
end
function LINUX()
  return vim.fn.has("unix") and not vim.fn.has("macunix") and not vim.fn.has("win32unix")
end
function WINDOWS()
  return vim.fn.has("win16") or vim.fn.has("win32") or vim.fn.has("win64")
end

if (WINDOWS()) then
  M.cmd = { "typescript-language-server.cmd", "--stdio" }
else
  M.cmd = { "typescript-language-server", "--stdio" }
end

return {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = M.cmd
}
