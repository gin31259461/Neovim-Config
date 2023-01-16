local color_status_ok, colors = pcall(require, "tokyonight.colors");
if not color_status_ok then
  return
end

local scrollbar_status_ok, scrollbar = pcall(require, "scrollbar");
if not scrollbar_status_ok then
  return
end

colors.setup();
scrollbar.setup({
  handle = {
    color = colors.bg_highlight,
  },
  marks = {
    Search =  { color = colors.orange },
    Error =  { color = colors.error },
    Warn =  { color = colors.warning },
    Info =  { color = colors.info },
    Hint =  { color = colors.hint },
    Misc =  { color = colors.purple },
  }
})
