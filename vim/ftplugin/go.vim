" ALE
let b:ale_fix_on_save = 1
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace', 'goimports', 'gofmt', 'golines']

let g:go_auto_same_ids = 1
let g:go_auto_type_info = 1
let g:go_doc_popup_window = 1
let g:go_echo_command_info = 0
let g:go_fillstruct_mode = 'gopls'
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_metalinter_command = v:null " experimental speed-up change
let g:go_term_close_on_exit = 0
let g:go_term_mode = "split"
let g:go_test_show_name = 1

" let g:go_debug = ['shell-commands', 'lsp']

set tabstop=4
