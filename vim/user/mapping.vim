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
nmap <leader>e :NvimTreeFocus<cr>
nmap <leader>r :NvimTreeToggle<cr>

"buffers operations
nmap bn :bn<cr>
nmap bp :bp<cr>
nmap bd :bd<cr> 
