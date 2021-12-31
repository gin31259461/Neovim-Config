let g:mapleader = ' ' 

"-----------insert mode---------------

imap jj <esc>

"-----------normal mode---------------

"<cr> : carriage return = enter
"<NOP> : no-op : no operation
nmap <Space> <NOP>
nmap <leader>q :q<cr>
nmap <leader>w :w<cr>
nmap <leader><leader>q :q!<cr>
nmap <leader>r :RnvimrToggle<cr> 

"buffers operations
nmap gn :bn<cr>
nmap gp :bp<cr>
nmap gd :bd<cr> 
