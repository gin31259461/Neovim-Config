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
let g:vim_markdown_conceal_code_blocks = 0

" markdown preview config 
let g:mkdp_auto_start = 0

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

source $HOME/.config/nvim/vim/user/airline.vim
source $HOME/.config/nvim/vim/user/tmuxline.vim
source $HOME/.config/nvim/vim/user/mapping.vim

lua << EOF
require("user.plugins")
require('user.nvim-cmp')
require('user.lsp-installer')
require('user.cmp-cmdline')
require('user.cmp-spell')
require('user.cmp-database')
require('user.cmp-tabnine')
require('user.lsp-signature')
require('user.nvim-autopairs')
EOF
