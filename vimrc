let g:ackprg='rg --vimgrep'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:taboo_tab_format=" %P %m "

" syntastic
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = "~/bin/rubocop-syntastic-wrapper"

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
map <Leader>gdc :Git diff --cached<CR>
map <Leader>gdi :Git diff<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gp :Git add -p<CR>
map <Leader>h :helpclose<CR>
map <Leader>H :helpclose<CR>

imap ii <ESC>
imap ij <ESC>
imap ji <ESC>
imap <Leader>r <ESC><Leader>r
imap <Leader>R <ESC><Leader>R

nmap <Leader>c<space> <Plug>CommentaryLine
" via https://stackoverflow.com/a/8585343
nmap <Leader>Q :bp\|sp\|bn\|bd<CR>

map <Leader><Leader> :cnext<CR>

nnoremap <Plug>TabNext :call repeat#set("\<Plug>TabNext")<CR>:tabnext<CR>
nmap <Leader>t <Plug>TabNext

map <Leader>T :tabnew<CR>

set expandtab
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set number
set relativenumber
set smartcase
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set updatetime=250 " via https://github.com/airblade/vim-gitgutter#getting-started

filetype plugin indent on
syntax on

" Optional package distributed with macvim
packadd matchit

packadd molokai
colorscheme molokai
highlight QuickFixLine term=reverse ctermbg=220 ctermfg=0

autocmd BufEnter * EnableStripWhitespaceOnSave

" syntastic recommended settings via https://github.com/vim-syntastic/syntastic#3-recommended-settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
