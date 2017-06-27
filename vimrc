let g:ctrlp_cmd = 'CtrlPMixed'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <Leader>a :Ack!<CR>
map <Leader>A :Ack<CR>
map <Leader>d :Dispatch<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gp :Git add -p<CR>

set laststatus=2
set mouse=a
set number
set relativenumber
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
syntax on

packadd molokai
colorscheme molokai
