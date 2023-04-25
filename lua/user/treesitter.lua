local configs_status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not configs_status_ok then
  return
end

local install_status_ok, install = pcall(require, "nvim-treesitter.install")
if not install_status_ok then
  return
end

-- if have any error on windows:
-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support
install.compilers = {"clang"}

configs.setup {
  ensure_installed = {"c", "cpp", "lua", "vim"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = true, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = false, disable = { "" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
