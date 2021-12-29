source $HOME/.config/nvim/vim-plug/plugins.vim

set t_Co=256

"Disable compatibility with vi which can cause unexpected issues.
set nocompatible

"Disable mode line
set noshowmode

"Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

"indent
set cindent

" turn off conceal
" refer to https://github.com/plasticboy/vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1

"tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"colorscheme
colorscheme space-vim-dark 

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59

"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235
let g:space_vim_dark_background = 233

"cursorline
set cursorline
hi CursorLine ctermbg=NONE

" syntax highlighting
syntax on

"search
set hlsearch
set showmatch

"Add numbers to each line on the left-hand side.
set number

"----------Rnvimr Configure-----------
"use 256colors-cheat sheet (-1 represent default)
let g:rnvimr_border_attr = {'fg': 214, 'bg': -1}

source $HOME/.config/nvim/vim/packages/configures/airline.vim
source $HOME/.config/nvim/vim/packages/configures/tmuxline.vim
source $HOME/.config/nvim/vim/packages/configures/mapping.vim

lua << EOF
require('packages.configures.nvim-cmp')
require('packages.configures.lsp-installer')
require('packages.configures.cmp-cmdline')
require('packages.configures.cmp-spell')
require('packages.configures.cmp-database')
require('packages.configures.cmp-tabnine')
require('packages.configures.lsp-signature')
require('packages.configures.nvim-autopairs')
require('packages.configures.nvim-lspconfig')
EOF
