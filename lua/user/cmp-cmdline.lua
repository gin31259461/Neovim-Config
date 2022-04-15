local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

cmp.setup.cmdline(':', {

  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'cmdline' }
  }
})

cmp.setup.cmdline('/', {

  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
