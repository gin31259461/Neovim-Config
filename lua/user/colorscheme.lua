vim.cmd [[
try
  colorscheme space-vim-dark 
  hi Normal     ctermbg=NONE guibg=NONE
  hi LineNr     ctermbg=NONE guibg=NONE
  hi SignColumn ctermbg=NONE guibg=NONE
  hi Comment guifg=#5C6370 ctermfg=59
  "   Range:   233 (darkest) ~ 238 (lightest)
  "   Default: 235
let g:space_vim_dark_background = 233
endtry
]]
