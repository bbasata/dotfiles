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
map <Leader>gb :Git blame<CR>
map <Leader>gc :Git commit<CR>
map <Leader>gdc :Git diff --cached<CR>
map <Leader>gdi :Git diff<CR>
map <Leader>gs :Git<CR>
map <Leader>gp :Git add -p<CR>
map <Leader>h :helpclose<CR>
map <Leader>H :helpclose<CR>

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
set statusline=[%n]\ %f:%l\ %h%m%r\ %=%{go#statusline#Show()}
set updatetime=250 " via https://github.com/airblade/vim-gitgutter#getting-started

filetype plugin indent on
syntax on

" Optional package distributed with macvim
packadd matchit

packadd molokai
colorscheme molokai
highlight QuickFixLine term=reverse ctermbg=220 ctermfg=0

autocmd BufEnter * EnableStripWhitespaceOnSave

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:go_auto_same_ids = 1
let g:go_auto_type_info = 1
let g:go_echo_command_info = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_metalinter_autosave_enabled = 1
let g:go_term_close_on_exit = 0
let g:go_term_mode = "split"
let g:go_test_show_name = 1

set foldmethod=syntax
