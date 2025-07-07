set autoread
set clipboard=autoselect,unnamed
set fillchars=fold:\ ,
set foldmethod=syntax
set hidden
set ignorecase
set incsearch
set laststatus=2
set macmeta
set mouse=a
set number
set relativenumber
set shortmess+=A
set showcmd
set smartcase
set statusline=[%n]\ [%3p%%]\ %f:%l,%v\ %h%m%r\ %=%{go#statusline#Show()}\ %=%{substitute(getcwd(),$HOME,'~','')} 
set updatetime=250 " via https://github.com/airblade/vim-gitgutter#getting-started
set wildmenu
set wildmode=list:longest,full
set wildoptions=pum

let g:ackprg='rg --vimgrep'
let g:taboo_tab_format=" %P %m "

" ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" fzf.vim
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <C-p> :FZF<CR>
nnoremap <C-t> :terminal<CR>

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

filetype plugin indent on
syntax on

" Optional package distributed with macvim
packadd comment
packadd matchit

packadd distinguished
colorscheme distinguished
highlight QuickFixLine term=reverse ctermbg=220 ctermfg=0
