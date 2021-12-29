" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better syntax support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs 
    Plug 'jiangmiao/auto-pairs'

    " AirLine for statusline
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'

    " Tmuxline
    Plug 'edkolev/tmuxline.vim'
    
    " File exploer
    Plug 'kevinhwang91/rnvimr'

    " Color scheme space-vim-dark
    Plug 'liuchengxu/space-vim-dark'

    " Vim-dadbod-completion
    Plug 'kristijanhusak/vim-dadbod-completion'

    " Ultisnips
    Plug 'SirVer/ultisnips'


    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'

    Plug 'onsails/lspkind-nvim'
    Plug 'ray-x/lsp_signature.nvim'


    " Nvim completion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-cmdline'

    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    Plug 'ray-x/cmp-treesitter'
    Plug 'f3fora/cmp-spell'
    Plug 'hrsh7th/cmp-calc'
    Plug 'hrsh7th/cmp-emoji'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'octaltree/cmp-look'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'tzachar/cmp-tabnine', { 'do': './install.sh'}

    " Autopairs for nvim-cmp
    Plug 'windwp/nvim-autopairs'

    " Indent-line
    Plug 'Yggdroot/indentLine'

    " vim-markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

call plug#end()
