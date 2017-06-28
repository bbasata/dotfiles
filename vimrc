let g:ctrlp_cmd = 'CtrlPMixed'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <Leader>a :Ack!<CR>
map <Leader>A :Ack<CR>
map <Leader>d :Dispatch<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gp :Git add -p<CR>
map <Leader>h :helpclose<CR>
map <Leader>H :helpclose<CR>
map <Leader><Leader> :cnext<CR>

nnoremap <Plug>TabNext :call repeat#set("\<Plug>TabNext")<CR>:tabnext<CR>
nmap <Leader>t <Plug>TabNext

map <Leader>T :tabnew<CR>

set incsearch
set laststatus=2
set mouse=a
set number
set relativenumber
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
syntax on

packadd molokai
colorscheme molokai
highlight QuickFixLine term=reverse ctermbg=220 ctermfg=0
