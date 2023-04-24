local M = {}

M.suc_message = function(title)

vim.notify("Successfully loaded", "info", {
	title = title,
  timeout = 1000,
})

end

return M
