function OSX()
  return vim.fn.has("macunix")
end
function LINUX()
  return vim.fn.has("unix") and not vim.fn.has("macunix") and not vim.fn.has("win32unix")
end
function WINDOWS()
  return vim.fn.has("win16") or vim.fn.has("win32") or vim.fn.has("win64")
end

-- setting nvim shell
if (LINUX() == false) then
  vim.cmd("let &shell = has('win32') ? 'powershell' : 'pwsh'")
  vim.cmd("let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'")
  vim.cmd("let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("set shellquote= shellxquote=")
end
