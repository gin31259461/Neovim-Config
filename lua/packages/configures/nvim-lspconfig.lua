require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        global = {'vim'},
      },
    },
  },
}
