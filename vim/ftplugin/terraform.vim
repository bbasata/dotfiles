if executable('terraform-ls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'terraform-ls',
        \ 'cmd': {server_info->['terraform-ls', 'serve']},
        \ 'whitelist': ['terraform'],
        \ })
endif

let b:ale_fix_on_save = 1
let b:ale_fixers = ['terraform', 'remove_trailing_lines', 'trim_whitespace']
let b:ale_virtualtext_cursor='current'
let b:ale_lint_on_text_changed = 1
