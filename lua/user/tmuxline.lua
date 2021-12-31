vim.cmd [[
try
  let g:airline#extensions#tmuxline#enabled = 0  
  let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"
  let g:tmuxline_separators = {
      \ 'left' : '',
      \ 'left_alt': '>',
      \ 'right' : ' ',
      \ 'right_alt' : '<',
      \ 'space' : ' '}
endtry
]]
