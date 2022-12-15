local M = {}

if (require('utils').WINDOWS()) then
  M.cmd = { "typescript-language-server.cmd", "--stdio" }
else
  M.cmd = { "typescript-language-server", "--stdio" }
end

return {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = M.cmd
}
