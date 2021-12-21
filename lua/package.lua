vim.cmd [[packadd packer.nvim]]

return require('packer').startup(

  function(use)

  -- call Packer
  use {'wbthomason/packer.nvim', opt = true}

  -- better syntax support
  use 'sheerun/vim-polyglot'

  -- auto pairs
  use 'jiangmiao/auto-pairs'

  -- airLine for statusline
  use 'vim-airline/vim-airline-themes'
  use 'vim-airline/vim-airline'

  --tmuxline
  use 'edkolev/tmuxline.vim'

  use { -- file exploer
    'kevinhwang91/rnvimr',
    run = 'pip install ranger-rm && pip install ueberzug'
  }

  -- color schemes
  use 'liuchengxu/space-vim-dark'
  --use 'morhetz/gruvbox'

  --LSP
  use 'neovim/nvim-lspconfig'

  use {
    'williamboman/nvim-lsp-installer',
  }
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind-nvim'

  -- nvim completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'octaltree/cmp-look'
  use 'hrsh7th/cmp-calc'
  use 'f3fora/cmp-spell'
  use 'hrsh7th/cmp-emoji'
  use 'ray-x/cmp-treesitter'

  use 'kristijanhusak/vim-dadbod-completion'

  use { -- cmp-tabnine
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
  }

  -- auto pairs for nvim-cmp
  use 'windwp/nvim-autopairs'

  -- Ultisnips
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'

  -- identline
  use 'Yggdroot/indentLine'

  end
)
