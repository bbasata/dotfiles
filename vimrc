let g:ctrlp_cmd = 'CtrlPMixed'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <Leader>a :Ack!<CR>
map <Leader>A :Ack<CR>
map <Leader>d :Dispatch<CR>
map <Leader>gs :Gstatus<CR>

set number
set relativenumber
syntax on
