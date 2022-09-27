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

  -- Have packer manage itself
  use "wbthomason/packer.nvim"

  -- Useful lua functions used ny lots of plugins
  use "nvim-lua/plenary.nvim"

  -- AirLine for statusline
  --use 'vim-airline/vim-airline-themes'
  --use 'vim-airline/vim-airline'

  -- Colorscheme
  use 'liuchengxu/space-vim-dark'
  use 'morhetz/gruvbox'

  -- Alpha menu
  use "goolord/alpha-nvim"

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'onsails/lspkind-nvim'
  use 'ray-x/lsp_signature.nvim'

  -- Lua snippet
  use 'L3MON4D3/LuaSnip'

  -- Lua
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
  use 'nvim-lualine/lualine.nvim'

  -- Autocompletion
  use 'hrsh7th/nvim-cmp' -- completion
  use 'hrsh7th/cmp-cmdline' -- cmdline completion
  use 'saadparwaiz1/cmp_luasnip' -- snippet completion
  use 'ray-x/cmp-treesitter'
  use 'f3fora/cmp-spell' -- spell completion
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'octaltree/cmp-look'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path' -- parh completion
  use 'hrsh7th/cmp-buffer' -- buffer completion
  use {'tzachar/cmp-tabnine', run = './install.sh'} -- tabnine completion

  -- Autopairs for cmp and treesitter
  use 'windwp/nvim-autopairs'

  -- Indent-line
  use "lukas-reineke/indent-blankline.nvim"

  -- Toggle terminal
  use "akinsho/toggleterm.nvim"

  -- Markdown
  use 'godlygeek/tabular'
  use 'plasticboy/vim-markdown'

  -- Markdown preview
  use {'iamcco/markdown-preview.nvim', run = ':call mkdp#util#install()'}

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Nvim tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Which key
  use "folke/which-key.nvim"

  -- Speed up loading lua module
  use 'lewis6991/impatient.nvim'

  -- Gui notification
  use 'rcarriga/nvim-notify'

  -- Live html css javascript preview
  use 'turbio/bracey.vim'

  -- Tmux nvim
  use({
    "aserowy/tmux.nvim",
    config = function()
        require("tmux").setup({
            -- overwrite default configuration
            -- here, e.g. to enable default bindings
            copy_sync = {
                -- enables copy sync and overwrites all register actions to
                -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
                enable = true,

                --sync system clipboard without tmux
                sync_clipboard = false,
            },
            navigation = {
                -- enables default keybindings (C-hjkl) for normal mode
                enable_default_keybindings = true,
            },
            resize = {
                -- enables default keybindings (A-hjkl) for normal mode
                enable_default_keybindings = true,
            }
        })
    end
  })

  -- Smooth scrolling
  use 'karb94/neoscroll.nvim'

  -- Better escape
  use {'jdhao/better-escape.vim', event = 'InsertEnter'}

  -- Git
  use 'tpope/vim-fugitive'
  use "lewis6991/gitsigns.nvim"

  -- Wilder for cmdline autocompletion
  use 'romgrk/fzy-lua-native'
  use 'gelguy/wilder.nvim'

  -- like easymotion
  use 'phaazon/hop.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
