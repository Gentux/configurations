set smartindent
set cinwords=if,elif,else,for,while,try,except,finally,def,class
set nocindent

set softtabstop=4
set tabstop=4
set shiftwidth=4

"let g:syntastic_python_flake8_args='--max-line-length=120'
"let g:syntastic_python_pep8_args='--max-line-length=120'
"let g:syntastic_python_pyflake_args='--max-line-length=120'
let g:syntastic_python_checkers = ['flake8', 'pep8', 'pyflake']
