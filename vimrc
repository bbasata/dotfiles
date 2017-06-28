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
map <Leader><Leader> :cnext<CR>

nnoremap <Plug>TabNext :tabnext<CR>:call repeat#set("\<Plug>TabNext")<CR>
nmap <Leader>tn <Plug>TabNext

nnoremap <Plug>TabPrevious :tabprevious<CR>:call repeat#set("\<Plug>TabPrevious")<CR>
nmap <Leader>tp <Plug>TabPrevious

map <Leader>tN :tabnew<CR>
map <Leader>TN :tabnew<CR>

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
