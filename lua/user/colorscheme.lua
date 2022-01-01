vim.cmd [[
try

  colorscheme space-vim-dark 
  color space-vim-dark

  "   Range:   233 (darkest) ~ 238 (lightest)
  "   Default: 235
  let g:space_vim_dark_background = 233

  " set term gui colors (most terminals support this)
  set termguicolors 

  " hi Normal     ctermbg=NONE guibg=NONE
  " hi SignColumn ctermbg=NONE guibg=NONE
  " hi LineNr     ctermbg=NONE guibg=NONE
  hi Comment guifg=#5C6370 ctermfg=59

endtry
]]
