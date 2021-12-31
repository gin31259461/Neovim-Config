local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)

  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Better syntax support
  use 'sheerun/vim-polyglot'

  -- Auto pairs
  use 'jiangmiao/auto-pairs'

  -- AirLine for statusline
  use 'vim-airline/vim-airline-themes'
  use 'vim-airline/vim-airline'

  -- Tmuxline
  use 'edkolev/tmuxline.vim'

  -- File exploer
  use 'kevinhwang91/rnvimr'

  -- Color scheme space-vim-dark
  use 'liuchengxu/space-vim-dark'

  -- Vim-dadbod-completion
  use 'kristijanhusak/vim-dadbod-completion'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'onsails/lspkind-nvim'
  use 'ray-x/lsp_signature.nvim'

  -- lua snip
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Nvim completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-cmdline'

  use 'ray-x/cmp-treesitter'
  use 'f3fora/cmp-spell'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'octaltree/cmp-look'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use {'tzachar/cmp-tabnine', run = './install.sh'}

  -- Autopairs for nvim-cmp
  use 'windwp/nvim-autopairs'

  -- Indent-line
  use 'Yggdroot/indentLine'

  -- vim-markdown
  use 'godlygeek/tabular'
  use 'plasticboy/vim-markdown'

  -- vim-markdown preview
  use {'iamcco/markdown-preview.nvim', run = ':call mkdp#util#install()'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
