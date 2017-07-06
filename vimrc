let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:taboo_tab_format=" %P %m "

" vim-vroom
let g:vroom_clear_screen=0
let g:vroom_map_keys=0 " Let's keep <Leader>l for ListToggle
let g:vroom_use_dispatch=1
silent! map <unique> <Leader>r :VroomRunTestFile<CR>
silent! map <unique> <Leader>R :VroomRunNearestTest<CR>

" ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <Leader>a :Ack!<CR>
map <Leader>A :Ack<CR>
map <Leader>b :Dispatch bundle install<CR>
map <Leader>d :Wall<CR>:Dispatch<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gp :Git add -p<CR>
map <Leader>h :helpclose<CR>
map <Leader>H :helpclose<CR>

" via https://stackoverflow.com/a/8585343
nmap \Q :bp\|sp\|bn\|bd<CR>

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

autocmd BufEnter * EnableStripWhitespaceOnSave
